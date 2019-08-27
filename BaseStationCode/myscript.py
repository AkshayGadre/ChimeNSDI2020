import numpy as np
import scipy as sp
import matplotlib.pyplot as plt
A=np.fromfile('asdfgh.dat', dtype=np.complex64)
ref=np.fromfile('2downchirp.dat', dtype=np.complex64);
outfile=open("outputdata","a+");
divisor=np.fromfile('divisor.dat', dtype=np.complex64);
slotlen=160000;
datalen=int(len(A)/slotlen)*slotlen;
numslots=int(datalen/slotlen);
numChannels=160;
chiplength=int(slotlen/numChannels);
CHANNEL=np.zeros(numChannels,dtype=np.float);
print(numslots);
for i in range(0,numslots):
    D=A[i*slotlen:i*slotlen+slotlen-1];
    print("Slot Data Taken");
    Dfft=sp.fft(D);
    #print("FFT Computed");
    for j in range(0,numChannels):
        index=(j+80)%160;
        #print("Index Computed");
        channelData=Dfft[index*chiplength:index*chiplength+chiplength-1];
        channelData=np.concatenate((channelData[int(chiplength/2):chiplength-1],channelData[0:int(chiplength/2)-1]));
        #print("FFT fabricated");
        channelData=sp.ifft(channelData);
        #print("IFFT found");
        xcorre=np.correlate(channelData,ref);
        #print("Correlation computed");
        loc=np.argmax(np.abs(xcorre));
        #print("Location found");
        if loc<=chiplength-300:
            channelValue=np.mean(np.abs(np.divide(channelData[loc:loc+256],ref)));
            if channelValue>CHANNEL[j]:
                CHANNEL[j]=channelValue;
                
        
        
    print(i);            
            
            
            
        
    
    

for j in range(0,numChannels):
    print("Channel"+str(j)+":"+str(CHANNEL[j]));
    outfile.write(str(CHANNEL[j])+" ");
    
outfile.write("\n");
outfile.close();
print("Done");


