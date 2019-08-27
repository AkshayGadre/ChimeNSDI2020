#include "mbed.h"
#include "main.h"
#include "sx1276-hal.h"
#include "debug.h"
#include <time.h>
/* Set this flag to '1' to display debug messages on the console */
#define DEBUG_MESSAGE   1

/* Set this flag to '1' to use the LoRa modulation or to '0' to use FSK modulation */
#define USE_MODEM_LORA  1
#define USE_MODEM_FSK   !USE_MODEM_LORA

#define RF_FREQUENCY                                    915000000 // Hz
#define TX_OUTPUT_POWER                                 30    // 14 dBm

#if USE_MODEM_LORA == 1

    #define LORA_BANDWIDTH                              0      // [0: 125 kHz,
                                                                  //  1: 250 kHz,
                                                                  //  2: 500 kHz,
                                                                  //  3: Reserved]
    #define LORA_SPREADING_FACTOR                       10       // [SF7..SF12]
    #define LORA_CODINGRATE                             1         // [1: 4/5,
                                                                  //  2: 4/6,
                                                                  //  3: 4/7,
                                                                  //  4: 4/8]
    #define LORA_PREAMBLE_LENGTH                        8         // Same for Tx and Rx
    #define LORA_SYMBOL_TIMEOUT                         5         // Symbols
    #define LORA_FIX_LENGTH_PAYLOAD_ON                  false
    #define LORA_FHSS_ENABLED                           false  
    #define LORA_NB_SYMB_HOP                            4     
    #define LORA_IQ_INVERSION_ON                        false
    #define LORA_CRC_ENABLED                            true

#elif USE_MODEM_FSK == 1

    #define FSK_FDEV                                    25000     // Hz
    #define FSK_DATARATE                                19200     // bps
    #define FSK_BANDWIDTH                               50000     // Hz
    #define FSK_AFC_BANDWIDTH                           83333     // Hz
    #define FSK_PREAMBLE_LENGTH                         5         // Same for Tx and Rx
    #define FSK_FIX_LENGTH_PAYLOAD_ON                   false
    #define FSK_CRC_ENABLED                             true

#else
    #error "Please define a modem in the compiler options."
#endif

#define RX_TIMEOUT_VALUE                                500000      // in ms
#define BUFFER_SIZE                                     0        // Define the payload size here

#if( defined ( TARGET_KL25Z ) || defined ( TARGET_LPC11U6X ) )
DigitalOut led( LED2 );
#else
DigitalOut led( LED1 );
#endif

/*
 *  Global variables declarations
 */
typedef enum
{
    LOWPOWER = 0,
    IDLE,

    RX,
    RX_TIMEOUT,
    RX_ERROR,

    TX,
    TX_TIMEOUT,

    CAD,
    CAD_DONE
}AppStates_t;

volatile AppStates_t State = LOWPOWER;

/*!
 * Radio events function pointer
 */
static RadioEvents_t RadioEvents;

/*
 *  Global variables declarations
 */
clock_t start,start2,end;
SX1276MB1xAS Radio( NULL );
bool switchFreq = false;

int count=0;
int MAX_COUNT=160;
uint16_t BufferSize = BUFFER_SIZE;
uint8_t Buffer[BUFFER_SIZE];
Ticker freqSwitcher;
void  ALARMhandler();
int trigger=1;

int frequency=915000000;
int index = 0;
int16_t RssiValue = 0.0;
int8_t SnrValue = 0.0;

int main( void ) 
{
    start = clock();
   


    debug( "\n\n\r     SX1276 Ping Pong Demo Application \n\n\r" );
   // wait_ms(9*60000);
    // Initialize Radio driver
    RadioEvents.TxDone = OnTxDone;
    RadioEvents.RxDone = OnRxDone;
    RadioEvents.RxError = OnRxError;
    RadioEvents.TxTimeout = OnTxTimeout;
    RadioEvents.RxTimeout = OnRxTimeout;
    Radio.Init( &RadioEvents );

    // verify the connection with the board
    while( Radio.Read( REG_VERSION ) == 0x00  )
    {
        debug( "Radio could not be detected!\n\r", NULL );
        wait( 1 );
    }

    debug_if( ( DEBUG_MESSAGE & ( Radio.DetectBoardType( ) == SX1276MB1LAS ) ), "\n\r > Board Type: SX1276MB1LAS < \n\r" );
    debug_if( ( DEBUG_MESSAGE & ( Radio.DetectBoardType( ) == SX1276MB1MAS ) ), "\n\r > Board Type: SX1276MB1MAS < \n\r" );

    Radio.SetChannel( RF_FREQUENCY ); 

#if USE_MODEM_LORA == 1

    debug_if( LORA_FHSS_ENABLED, "\n\n\r             > LORA FHSS Mode < \n\n\r" );
    debug_if( !LORA_FHSS_ENABLED, "\n\n\r             > LORA Mode < \n\n\r" );

    Radio.SetTxConfig( MODEM_LORA, TX_OUTPUT_POWER, 0, LORA_BANDWIDTH,
                         LORA_SPREADING_FACTOR, LORA_CODINGRATE,
                         LORA_PREAMBLE_LENGTH, LORA_FIX_LENGTH_PAYLOAD_ON,
                         LORA_CRC_ENABLED, LORA_FHSS_ENABLED, LORA_NB_SYMB_HOP,
                         LORA_IQ_INVERSION_ON, 2000 );

    Radio.SetRxConfig( MODEM_LORA, LORA_BANDWIDTH, LORA_SPREADING_FACTOR,
                         LORA_CODINGRATE, 0, LORA_PREAMBLE_LENGTH,
                         LORA_SYMBOL_TIMEOUT, LORA_FIX_LENGTH_PAYLOAD_ON, 0,
                         LORA_CRC_ENABLED, LORA_FHSS_ENABLED, LORA_NB_SYMB_HOP,
                         LORA_IQ_INVERSION_ON, true );

#elif USE_MODEM_FSK == 1

    debug("\n\n\r              > FSK Mode < \n\n\r" );
    Radio.SetTxConfig( MODEM_FSK, TX_OUTPUT_POWER, FSK_FDEV, 0,
                         FSK_DATARATE, 0,
                         FSK_PREAMBLE_LENGTH, FSK_FIX_LENGTH_PAYLOAD_ON,
                         FSK_CRC_ENABLED, 0, 0, 0, 2000 );

    Radio.SetRxConfig( MODEM_FSK, FSK_BANDWIDTH, FSK_DATARATE,
                         0, FSK_AFC_BANDWIDTH, FSK_PREAMBLE_LENGTH,
                         0, FSK_FIX_LENGTH_PAYLOAD_ON, 0, FSK_CRC_ENABLED,
                         0, 0, false, true );

#else

#error "Please define a modem in the compiler options."

#endif

    debug_if( DEBUG_MESSAGE, "Starting Ping-Pong loop\r\n" );
    Radio.SetChannel(frequency); 
    led = 0;
    start2 = clock();
    //while( 1 )
    //{
     //  if(trigger==1){
       debug( "...Ping %d\r\n",frequency );
       // Send the reply to the PING string
       //strcpy( ( char* )Buffer, ( char* )PingMsg );
       // We fill the buffer with numbers for the payload
       //for( i = 4; i < BufferSize; i++ )
       //{
       //    Buffer[i] = i - 4;
       //}
       wait_ms( 30 );
       Radio.Send( Buffer, BufferSize );
       count=count+1;
    //   if(count==MAX_COUNT){
    //       count=0;
    //       end = clock();
    //       debug("\nSTART1=%lf",(end - start)/(double)CLOCKS_PER_SEC);
    //       debug("\nSTART2=%lf",(end - start2)/(double)CLOCKS_PER_SEC);
    //       wait_ms(300000); 
   //     }
   //    trigger=0;
    //   ALARMhandler();
     //  }
    //}
}

void OnTxDone( void )
{
    Radio.Sleep( );
    State = TX;
    
    count=count+1;
       if(count==MAX_COUNT){
           count=0;
           end = clock();
           debug("\nSTART1=%lf",(end - start)/(double)CLOCKS_PER_SEC);
           debug("\nSTART2=%lf",(end - start2)/(double)CLOCKS_PER_SEC);
          // wait_ms(660000-(int)(57.93*1000)); 
           start=clock();
        }
        ALARMhandler();
        debug( "...Ping %d\r\n",frequency );
        Radio.Send( Buffer, BufferSize );
  //  debug_if( DEBUG_MESSAGE, "> OnTxDone\n\r" );
}

void OnRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr )
{
    Radio.Sleep( );
    BufferSize = size;
    memcpy( Buffer, payload, BufferSize );
    RssiValue = rssi;
    SnrValue = snr;
    State = RX;
    debug_if( DEBUG_MESSAGE, "> OnRxDone\n\r" );
}

void OnTxTimeout( void )
{
    Radio.Sleep( );
    State = TX_TIMEOUT;
    debug_if( DEBUG_MESSAGE, "> OnTxTimeout\n\r" );
}

void OnRxTimeout( void )
{
    Radio.Sleep( );
    Buffer[BufferSize] = 0;
    State = RX_TIMEOUT;
    debug_if( DEBUG_MESSAGE, "> OnRxTimeout\n\r" );
}

void OnRxError( void )
{
    Radio.Sleep( );
    State = RX_ERROR;
    debug_if( DEBUG_MESSAGE, "> OnRxError\n\r" );
}

void  ALARMhandler()
{
    //if(trigger==0)
   // {
        //frequency=(((frequency-900000000)+125000)%20000000)+900000000;
        wait_ms( 25 );
        Radio.SetChannel(frequency); 
        wait_ms( 25 );
   //     trigger=1;
   // }
}