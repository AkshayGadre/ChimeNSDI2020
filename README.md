# ChimeNSDI2020
Code and Data for NSDI 2020 paper Frequency Configuration for LP-WANs in a Heartbeat

Please cite our paper Frequency Configuration for LP-WANs in a Heartbeat ... Gadre et al. at NSDI 2020 if you used some of our code or data.

Data is available at : https://cmu.box.com/s/ftqnqywb0jnf4a3kl4si81uums5153h4 

How to run code:

- Client-side:
  1. Buy a Semtech SX1276 dev kit. It contains SX1276MB1LAS mbed shield and a NUCLEO L152RE microcontroller.
  2. Use mbed online compiler at this website ( https://os.mbed.com/ide/ ) to import the simple PingPong example for the above board.
  3. Change the main.cpp to the codes provided in the ClientCode Folder.
  4. Compile and upload the binary (copy and paste in it's drive) after connecting the microcontroller using a microUSB cable (serial).
  5. Client should work as expected.
