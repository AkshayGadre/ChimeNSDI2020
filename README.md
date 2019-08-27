# ChimeNSDI2020
Code and Data for NSDI 2020 paper Frequency Configuration for LP-WANs in a Heartbeat

Please cite our paper Frequency Configuration for LP-WANs in a Heartbeat ... Gadre et al. at NSDI 2020 if you used some of our code or data.

Data is available at : https://cmu.box.com/s/ftqnqywb0jnf4a3kl4si81uums5153h4 

How to run code:

- Client-side:
  1. Buy a Semtech SX1276 dev kit. It contains SX1276MB1LAS mbed shield and a NUCLEO L152RE microcontroller.
  2. Use mbed online compiler at this website ( https://os.mbed.com/ide/ ) to import the simple PingPong example for the above board.
  3. Change the main.cpp to the codes provided in the ClientCode Folder.
  4. Compile and upload the binary (copy and paste in it's drive) after connecting the microcontroller using a microUSB cable (serial). This step is known to be problematic in Ubuntu so try with Windows if it does not work!
  5. Client should work as expected.
  
- Base-Station side (Only works for Ubuntu):
  1. Buy a USRP N210 or X310. (multiple for Chime)
  2. Install `uhd` and other packages as suggested at this website ( https://files.ettus.com/manual/page_build_guide.html ) .
  3. Upon compilation, all your binaries are available at BINARY directory (../uhd/hosts/build/examples/) and all example programs are available in the PROGRAM directory (../uhd/hosts/examples/).
  4. Every time you make the changes in PROGRAM directory, use `make` to create corresponding binary sans errors.
  5. You can use any of the .cpp files in the above base station code for various applications OR you can use simple example rx_samples_to_binary at appropriate frequencies.

- MATLAB code: 
  1. Install MATLAB (code is compatible with 2018b version).
  2. Use any of the above code appropriately. However, the below is the details of some of the more important codes:
    1. read_complex_binary - reads the complex binary files received by USRP (hard coded for float)
    2. write_complex_binary - writes complex vectors in binary files which can be transmitted by the USRP.
