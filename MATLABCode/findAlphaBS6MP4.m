function alpha = findAlphaBS6MP4(a1,b1,a2,b2,a3,b3,a4,b4,frequencies,chh12)
L1=[-0.7902 7.3632 5.23029];
L2=[59.2912 0.01159 14.41];
L3=[-8.37988 -32.3588 6.59];
L4=[-67.20 -25.207 27.339];
L5=[61.53 2.753 14.41];
L6=[60.37 1.286 14.41];
LRef=[17.544 -10.353 0.9368];
z=1;
channelsPerFrequency=30;
e=zeros(16,30*length(frequencies));
d1=norm([a1 b1 z]-L1);
d2=norm([a1 b1 z]-L2);
d3=norm([a1 b1 z]-L3);
d4=norm([a1 b1 z]-L4);
d5=norm([a1 b1 z]-L5);
d6=norm([a1 b1 z]-L6);
d1prime=norm([a2 b2 z]-L1);
d2prime=norm([a2 b2 z]-L2);
d3prime=norm([a2 b2 z]-L3);
d4prime=norm([a2 b2 z]-L4);
d5prime=norm([a2 b2 z]-L5);
d6prime=norm([a2 b2 z]-L6);
d1primeprime=norm([a3 b3 z]-L1);
d2primeprime=norm([a3 b3 z]-L2);
d3primeprime=norm([a3 b3 z]-L3);
d4primeprime=norm([a3 b3 z]-L4);
d5primeprime=norm([a3 b3 z]-L5);
d6primeprime=norm([a3 b3 z]-L6);
d1ref=norm(LRef-L1);
d2ref=norm(LRef-L2);
d3ref=norm(LRef-L3);
d4ref=norm(LRef-L4);
d5ref=norm(LRef-L5);
d6ref=norm(LRef-L6);
d1primeprimeprime=norm([a4 b4 z]-L1);
                            d2primeprimeprime=norm([a4 b4 z]-L2);
                            d3primeprimeprime=norm([a4 b4 z]-L3);
                            d4primeprimeprime=norm([a4 b4 z]-L4);
                            d5primeprimeprime=norm([a4 b4 z]-L5);
                            d6primeprimeprime=norm([a4 b4 z]-L6);

  for F=1:length(frequencies)
                       e(1,(F-1)*channelsPerFrequency+1)=(1/(d1*d2))*exp(2*1j*pi*(d2-d2ref-d1+d1ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+2)=(1/(d2*d3))*exp(2*1j*pi*(d3-d3ref-d2+d2ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+3)=(1/(d3*d4))*exp(2*1j*pi*(d4-d4ref-d3+d3ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+4)=(1/(d4*d1))*exp(2*1j*pi*(d1-d1ref-d4+d4ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+5)=(1/(d2*d4))*exp(2*1j*pi*(d4-d4ref-d2+d2ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+6)=(1/(d1*d3))*exp(2*1j*pi*(d3-d3ref-d1+d1ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+7)=(1/(d2*d1))*exp(2*1j*pi*(d1-d1ref-d2+d2ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+8)=(1/(d3*d2))*exp(2*1j*pi*(d2-d2ref-d3+d3ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+9)=(1/(d4*d3))*exp(2*1j*pi*(d3-d3ref-d4+d4ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+10)=(1/(d1*d4))*exp(2*1j*pi*(d4-d4ref-d1+d1ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+11)=(1/(d4*d2))*exp(2*1j*pi*(d2-d2ref-d4+d4ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+12)=(1/(d3*d1))*exp(2*1j*pi*(d1-d1ref-d3+d3ref)*frequencies(F)/3e8);
                       
                       e(1,(F-1)*channelsPerFrequency+13)=(1/(d1*d5))*exp(2*1j*pi*(d5-d5ref-d1+d1ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+14)=(1/(d2*d5))*exp(2*1j*pi*(d5-d5ref-d2+d2ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+15)=(1/(d3*d5))*exp(2*1j*pi*(d5-d5ref-d3+d3ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+16)=(1/(d4*d5))*exp(2*1j*pi*(d5-d5ref-d4+d4ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+17)=(1/(d5*d1))*exp(2*1j*pi*(d1-d1ref-d5+d5ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+18)=(1/(d5*d2))*exp(2*1j*pi*(d2-d2ref-d5+d5ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+19)=(1/(d5*d3))*exp(2*1j*pi*(d3-d3ref-d5+d5ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+20)=(1/(d5*d4))*exp(2*1j*pi*(d4-d4ref-d5+d5ref)*frequencies(F)/3e8);

                       e(1,(F-1)*channelsPerFrequency+21)=(1/(d1*d6))*exp(2*1j*pi*(d6-d6ref-d1+d1ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+22)=(1/(d2*d6))*exp(2*1j*pi*(d6-d6ref-d2+d2ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+23)=(1/(d3*d6))*exp(2*1j*pi*(d6-d6ref-d3+d3ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+24)=(1/(d4*d6))*exp(2*1j*pi*(d6-d6ref-d4+d4ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+25)=(1/(d5*d6))*exp(2*1j*pi*(d6-d6ref-d5+d5ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+26)=(1/(d6*d1))*exp(2*1j*pi*(d1-d1ref-d6+d6ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+27)=(1/(d6*d2))*exp(2*1j*pi*(d2-d2ref-d6+d6ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+28)=(1/(d6*d3))*exp(2*1j*pi*(d3-d3ref-d6+d6ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+29)=(1/(d6*d4))*exp(2*1j*pi*(d4-d4ref-d6+d6ref)*frequencies(F)/3e8);
                       e(1,(F-1)*channelsPerFrequency+30)=(1/(d6*d5))*exp(2*1j*pi*(d5-d5ref-d6+d6ref)*frequencies(F)/3e8);


                       e(2,(F-1)*channelsPerFrequency+1)=(1/(d1prime*d2))*exp(2*1j*pi*(d2-d2ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+2)=(1/(d2prime*d3))*exp(2*1j*pi*(d3-d3ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+3)=(1/(d3prime*d4))*exp(2*1j*pi*(d4-d4ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+4)=(1/(d4prime*d1))*exp(2*1j*pi*(d1-d1ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+5)=(1/(d2prime*d4))*exp(2*1j*pi*(d4-d4ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+6)=(1/(d1prime*d3))*exp(2*1j*pi*(d3-d3ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+7)=(1/(d2prime*d1))*exp(2*1j*pi*(d1-d1ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+8)=(1/(d3prime*d2))*exp(2*1j*pi*(d2-d2ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+9)=(1/(d4prime*d3))*exp(2*1j*pi*(d3-d3ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+10)=(1/(d1prime*d4))*exp(2*1j*pi*(d4-d4ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+11)=(1/(d4prime*d2))*exp(2*1j*pi*(d2-d2ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+12)=(1/(d3prime*d1))*exp(2*1j*pi*(d1-d1ref-d3prime+d3ref)*frequencies(F)/3e8);
                       
                       e(2,(F-1)*channelsPerFrequency+13)=(1/(d1prime*d5))*exp(2*1j*pi*(d5-d5ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+14)=(1/(d2prime*d5))*exp(2*1j*pi*(d5-d5ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+15)=(1/(d3prime*d5))*exp(2*1j*pi*(d5-d5ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+16)=(1/(d4prime*d5))*exp(2*1j*pi*(d5-d5ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+17)=(1/(d5prime*d1))*exp(2*1j*pi*(d1-d1ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+18)=(1/(d5prime*d2))*exp(2*1j*pi*(d2-d2ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+19)=(1/(d5prime*d3))*exp(2*1j*pi*(d3-d3ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+20)=(1/(d5prime*d4))*exp(2*1j*pi*(d4-d4ref-d5prime+d5ref)*frequencies(F)/3e8);

                       e(2,(F-1)*channelsPerFrequency+21)=(1/(d1prime*d6))*exp(2*1j*pi*(d6-d6ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+22)=(1/(d2prime*d6))*exp(2*1j*pi*(d6-d6ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+23)=(1/(d3prime*d6))*exp(2*1j*pi*(d6-d6ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+24)=(1/(d4prime*d6))*exp(2*1j*pi*(d6-d6ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+25)=(1/(d5prime*d6))*exp(2*1j*pi*(d6-d6ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+26)=(1/(d6prime*d1))*exp(2*1j*pi*(d1-d1ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+27)=(1/(d6prime*d2))*exp(2*1j*pi*(d2-d2ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+28)=(1/(d6prime*d3))*exp(2*1j*pi*(d3-d3ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+29)=(1/(d6prime*d4))*exp(2*1j*pi*(d4-d4ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(2,(F-1)*channelsPerFrequency+30)=(1/(d6prime*d5))*exp(2*1j*pi*(d5-d5ref-d6prime+d6ref)*frequencies(F)/3e8);
                       
                       
                       e(3,(F-1)*channelsPerFrequency+1)=(1/(d1*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d1+d1ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+2)=(1/(d2*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d2+d2ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+3)=(1/(d3*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d3+d3ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+4)=(1/(d4*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d4+d4ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+5)=(1/(d2*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d2+d2ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+6)=(1/(d1*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d1+d1ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+7)=(1/(d2*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d2+d2ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+8)=(1/(d3*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d3+d3ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+9)=(1/(d4*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d4+d4ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+10)=(1/(d1*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d1+d1ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+11)=(1/(d4*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d4+d4ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+12)=(1/(d3*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d3+d3ref)*frequencies(F)/3e8);
                       
                       e(3,(F-1)*channelsPerFrequency+13)=(1/(d1*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d1+d1ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+14)=(1/(d2*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d2+d2ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+15)=(1/(d3*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d3+d3ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+16)=(1/(d4*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d4+d4ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+17)=(1/(d5*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d5+d5ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+18)=(1/(d5*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d5+d5ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+19)=(1/(d5*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d5+d5ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+20)=(1/(d5*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d5+d5ref)*frequencies(F)/3e8);

                       e(3,(F-1)*channelsPerFrequency+21)=(1/(d1*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d1+d1ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+22)=(1/(d2*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d2+d2ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+23)=(1/(d3*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d3+d3ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+24)=(1/(d4*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d4+d4ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+25)=(1/(d5*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d5+d5ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+26)=(1/(d6*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d6+d6ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+27)=(1/(d6*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d6+d6ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+28)=(1/(d6*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d6+d6ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+29)=(1/(d6*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d6+d6ref)*frequencies(F)/3e8);
                       e(3,(F-1)*channelsPerFrequency+30)=(1/(d6*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d6+d6ref)*frequencies(F)/3e8);
                       
                       e(4,(F-1)*channelsPerFrequency+1)=(1/(d1prime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+2)=(1/(d2prime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+3)=(1/(d3prime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+4)=(1/(d4prime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+5)=(1/(d2prime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+6)=(1/(d1prime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+7)=(1/(d2prime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+8)=(1/(d3prime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+9)=(1/(d4prime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+10)=(1/(d1prime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+11)=(1/(d4prime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+12)=(1/(d3prime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d3prime+d3ref)*frequencies(F)/3e8);
                       
                       
                       e(4,(F-1)*channelsPerFrequency+13)=(1/(d1prime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+14)=(1/(d2prime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+15)=(1/(d3prime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+16)=(1/(d4prime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+17)=(1/(d5prime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+18)=(1/(d5prime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+19)=(1/(d5prime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+20)=(1/(d5prime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d5prime+d5ref)*frequencies(F)/3e8);

                       e(4,(F-1)*channelsPerFrequency+21)=(1/(d1prime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+22)=(1/(d2prime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+23)=(1/(d3prime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+24)=(1/(d4prime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+25)=(1/(d5prime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+26)=(1/(d6prime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+27)=(1/(d6prime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+28)=(1/(d6prime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+29)=(1/(d6prime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(4,(F-1)*channelsPerFrequency+30)=(1/(d6prime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d6prime+d6ref)*frequencies(F)/3e8);
                       
                       e(5,(F-1)*channelsPerFrequency+1)=(1/(d1primeprime*d2))*exp(2*1j*pi*(d2-d2ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+2)=(1/(d2primeprime*d3))*exp(2*1j*pi*(d3-d3ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+3)=(1/(d3primeprime*d4))*exp(2*1j*pi*(d4-d4ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+4)=(1/(d4primeprime*d1))*exp(2*1j*pi*(d1-d1ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+5)=(1/(d2primeprime*d4))*exp(2*1j*pi*(d4-d4ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+6)=(1/(d1primeprime*d3))*exp(2*1j*pi*(d3-d3ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+7)=(1/(d2primeprime*d1))*exp(2*1j*pi*(d1-d1ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+8)=(1/(d3primeprime*d2))*exp(2*1j*pi*(d2-d2ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+9)=(1/(d4primeprime*d3))*exp(2*1j*pi*(d3-d3ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+10)=(1/(d1primeprime*d4))*exp(2*1j*pi*(d4-d4ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+11)=(1/(d4primeprime*d2))*exp(2*1j*pi*(d2-d2ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+12)=(1/(d3primeprime*d1))*exp(2*1j*pi*(d1-d1ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       
                       e(5,(F-1)*channelsPerFrequency+13)=(1/(d1primeprime*d5))*exp(2*1j*pi*(d5-d5ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+14)=(1/(d2primeprime*d5))*exp(2*1j*pi*(d5-d5ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+15)=(1/(d3primeprime*d5))*exp(2*1j*pi*(d5-d5ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+16)=(1/(d4primeprime*d5))*exp(2*1j*pi*(d5-d5ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+17)=(1/(d5primeprime*d1))*exp(2*1j*pi*(d1-d1ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+18)=(1/(d5primeprime*d2))*exp(2*1j*pi*(d2-d2ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+19)=(1/(d5primeprime*d3))*exp(2*1j*pi*(d3-d3ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+20)=(1/(d5primeprime*d4))*exp(2*1j*pi*(d4-d4ref-d5primeprime+d5ref)*frequencies(F)/3e8);

                       e(5,(F-1)*channelsPerFrequency+21)=(1/(d1primeprime*d6))*exp(2*1j*pi*(d6-d6ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+22)=(1/(d2primeprime*d6))*exp(2*1j*pi*(d6-d6ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+23)=(1/(d3primeprime*d6))*exp(2*1j*pi*(d6-d6ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+24)=(1/(d4primeprime*d6))*exp(2*1j*pi*(d6-d6ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+25)=(1/(d5primeprime*d6))*exp(2*1j*pi*(d6-d6ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+26)=(1/(d6primeprime*d1))*exp(2*1j*pi*(d1-d1ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+27)=(1/(d6primeprime*d2))*exp(2*1j*pi*(d2-d2ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+28)=(1/(d6primeprime*d3))*exp(2*1j*pi*(d3-d3ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+29)=(1/(d6primeprime*d4))*exp(2*1j*pi*(d4-d4ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(5,(F-1)*channelsPerFrequency+30)=(1/(d6primeprime*d5))*exp(2*1j*pi*(d5-d5ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       
                       e(6,(F-1)*channelsPerFrequency+1)=(1/(d1*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d1+d1ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+2)=(1/(d2*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d2+d2ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+3)=(1/(d3*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d3+d3ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+4)=(1/(d4*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d4+d4ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+5)=(1/(d2*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d2+d2ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+6)=(1/(d1*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d1+d1ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+7)=(1/(d2*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d2+d2ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+8)=(1/(d3*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d3+d3ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+9)=(1/(d4*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d4+d4ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+10)=(1/(d1*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d1+d1ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+11)=(1/(d4*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d4+d4ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+12)=(1/(d3*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d3+d3ref)*frequencies(F)/3e8);
                       
                       e(6,(F-1)*channelsPerFrequency+13)=(1/(d1*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d1+d1ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+14)=(1/(d2*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d2+d2ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+15)=(1/(d3*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d3+d3ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+16)=(1/(d4*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d4+d4ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+17)=(1/(d5*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d5+d5ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+18)=(1/(d5*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d5+d5ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+19)=(1/(d5*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d5+d5ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+20)=(1/(d5*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d5+d5ref)*frequencies(F)/3e8);

                       e(6,(F-1)*channelsPerFrequency+21)=(1/(d1*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d1+d1ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+22)=(1/(d2*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d2+d2ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+23)=(1/(d3*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d3+d3ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+24)=(1/(d4*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d4+d4ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+25)=(1/(d5*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d5+d5ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+26)=(1/(d6*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d6+d6ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+27)=(1/(d6*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d6+d6ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+28)=(1/(d6*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d6+d6ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+29)=(1/(d6*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d6+d6ref)*frequencies(F)/3e8);
                       e(6,(F-1)*channelsPerFrequency+30)=(1/(d6*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d6+d6ref)*frequencies(F)/3e8);
                       
                       e(7,(F-1)*channelsPerFrequency+1)=(1/(d1primeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+2)=(1/(d2primeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+3)=(1/(d3primeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+4)=(1/(d4primeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+5)=(1/(d2primeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+6)=(1/(d1primeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+7)=(1/(d2primeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+8)=(1/(d3primeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+9)=(1/(d4primeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+10)=(1/(d1primeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+11)=(1/(d4primeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+12)=(1/(d3primeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       
                       
                       e(7,(F-1)*channelsPerFrequency+13)=(1/(d1primeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+14)=(1/(d2primeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+15)=(1/(d3primeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+16)=(1/(d4primeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+17)=(1/(d5primeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+18)=(1/(d5primeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+19)=(1/(d5primeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+20)=(1/(d5primeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d5primeprime+d5ref)*frequencies(F)/3e8);

                       e(7,(F-1)*channelsPerFrequency+21)=(1/(d1primeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+22)=(1/(d2primeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+23)=(1/(d3primeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+24)=(1/(d4primeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+25)=(1/(d5primeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+26)=(1/(d6primeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+27)=(1/(d6primeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+28)=(1/(d6primeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+29)=(1/(d6primeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(7,(F-1)*channelsPerFrequency+30)=(1/(d6primeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       
                       e(8,(F-1)*channelsPerFrequency+1)=(1/(d1prime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+2)=(1/(d2prime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+3)=(1/(d3prime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+4)=(1/(d4prime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+5)=(1/(d2prime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+6)=(1/(d1prime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+7)=(1/(d2prime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+8)=(1/(d3prime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+9)=(1/(d4prime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+10)=(1/(d1prime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+11)=(1/(d4prime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+12)=(1/(d3prime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d3prime+d3ref)*frequencies(F)/3e8);
                       
                       
                       e(8,(F-1)*channelsPerFrequency+13)=(1/(d1prime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+14)=(1/(d2prime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+15)=(1/(d3prime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+16)=(1/(d4prime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+17)=(1/(d5prime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+18)=(1/(d5prime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+19)=(1/(d5prime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+20)=(1/(d5prime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d5prime+d5ref)*frequencies(F)/3e8);

                       e(8,(F-1)*channelsPerFrequency+21)=(1/(d1prime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+22)=(1/(d2prime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+23)=(1/(d3prime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+24)=(1/(d4prime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+25)=(1/(d5prime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+26)=(1/(d6prime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+27)=(1/(d6prime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+28)=(1/(d6prime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+29)=(1/(d6prime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(8,(F-1)*channelsPerFrequency+30)=(1/(d6prime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d6prime+d6ref)*frequencies(F)/3e8);
                       
                       e(9,(F-1)*channelsPerFrequency+1)=(1/(d1primeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+2)=(1/(d2primeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+3)=(1/(d3primeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+4)=(1/(d4primeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+5)=(1/(d2primeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+6)=(1/(d1primeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+7)=(1/(d2primeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+8)=(1/(d3primeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+9)=(1/(d4primeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+10)=(1/(d1primeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+11)=(1/(d4primeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+12)=(1/(d3primeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       
                       
                       e(9,(F-1)*channelsPerFrequency+13)=(1/(d1primeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+14)=(1/(d2primeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+15)=(1/(d3primeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+16)=(1/(d4primeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+17)=(1/(d5primeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+18)=(1/(d5primeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+19)=(1/(d5primeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+20)=(1/(d5primeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d5primeprime+d5ref)*frequencies(F)/3e8);

                       e(9,(F-1)*channelsPerFrequency+21)=(1/(d1primeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+22)=(1/(d2primeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+23)=(1/(d3primeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+24)=(1/(d4primeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+25)=(1/(d5primeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+26)=(1/(d6primeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+27)=(1/(d6primeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+28)=(1/(d6primeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+29)=(1/(d6primeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(9,(F-1)*channelsPerFrequency+30)=(1/(d6primeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       
                       e(10,(F-1)*channelsPerFrequency+1)=(1/(d1*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d1+d1ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+2)=(1/(d2*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d2+d2ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+3)=(1/(d3*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d3+d3ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+4)=(1/(d4*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d4+d4ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+5)=(1/(d2*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d2+d2ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+6)=(1/(d1*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d1+d1ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+7)=(1/(d2*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d2+d2ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+8)=(1/(d3*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d3+d3ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+9)=(1/(d4*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d4+d4ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+10)=(1/(d1*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d1+d1ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+11)=(1/(d4*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d4+d4ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+12)=(1/(d3*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d3+d3ref)*frequencies(F)/3e8);
                       
                       e(10,(F-1)*channelsPerFrequency+13)=(1/(d1*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d1+d1ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+14)=(1/(d2*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d2+d2ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+15)=(1/(d3*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d3+d3ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+16)=(1/(d4*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d4+d4ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+17)=(1/(d5*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d5+d5ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+18)=(1/(d5*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d5+d5ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+19)=(1/(d5*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d5+d5ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+20)=(1/(d5*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d5+d5ref)*frequencies(F)/3e8);

                       e(10,(F-1)*channelsPerFrequency+21)=(1/(d1*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d1+d1ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+22)=(1/(d2*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d2+d2ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+23)=(1/(d3*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d3+d3ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+24)=(1/(d4*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d4+d4ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+25)=(1/(d5*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d5+d5ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+26)=(1/(d6*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d6+d6ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+27)=(1/(d6*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d6+d6ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+28)=(1/(d6*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d6+d6ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+29)=(1/(d6*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d6+d6ref)*frequencies(F)/3e8);
                       e(10,(F-1)*channelsPerFrequency+30)=(1/(d6*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d6+d6ref)*frequencies(F)/3e8);
                       
                       e(11,(F-1)*channelsPerFrequency+1)=(1/(d1prime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+2)=(1/(d2prime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+3)=(1/(d3prime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+4)=(1/(d4prime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+5)=(1/(d2prime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+6)=(1/(d1prime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+7)=(1/(d2prime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+8)=(1/(d3prime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+9)=(1/(d4prime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+10)=(1/(d1prime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+11)=(1/(d4prime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+12)=(1/(d3prime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d3prime+d3ref)*frequencies(F)/3e8);
                       
                       e(11,(F-1)*channelsPerFrequency+13)=(1/(d1prime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+14)=(1/(d2prime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+15)=(1/(d3prime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+16)=(1/(d4prime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+17)=(1/(d5prime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+18)=(1/(d5prime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+19)=(1/(d5prime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+20)=(1/(d5prime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d5prime+d5ref)*frequencies(F)/3e8);

                       e(11,(F-1)*channelsPerFrequency+21)=(1/(d1prime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d1prime+d1ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+22)=(1/(d2prime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d2prime+d2ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+23)=(1/(d3prime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d3prime+d3ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+24)=(1/(d4prime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d4prime+d4ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+25)=(1/(d5prime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d5prime+d5ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+26)=(1/(d6prime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+27)=(1/(d6prime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+28)=(1/(d6prime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+29)=(1/(d6prime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d6prime+d6ref)*frequencies(F)/3e8);
                       e(11,(F-1)*channelsPerFrequency+30)=(1/(d6prime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d6prime+d6ref)*frequencies(F)/3e8);
                       
                       e(12,(F-1)*channelsPerFrequency+1)=(1/(d1primeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+2)=(1/(d2primeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+3)=(1/(d3primeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+4)=(1/(d4primeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+5)=(1/(d2primeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+6)=(1/(d1primeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+7)=(1/(d2primeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+8)=(1/(d3primeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+9)=(1/(d4primeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+10)=(1/(d1primeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+11)=(1/(d4primeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+12)=(1/(d3primeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       
                       e(12,(F-1)*channelsPerFrequency+13)=(1/(d1primeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+14)=(1/(d2primeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+15)=(1/(d3primeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+16)=(1/(d4primeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+17)=(1/(d5primeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+18)=(1/(d5primeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+19)=(1/(d5primeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+20)=(1/(d5primeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d5primeprime+d5ref)*frequencies(F)/3e8);

                       e(12,(F-1)*channelsPerFrequency+21)=(1/(d1primeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d1primeprime+d1ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+22)=(1/(d2primeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d2primeprime+d2ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+23)=(1/(d3primeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d3primeprime+d3ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+24)=(1/(d4primeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d4primeprime+d4ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+25)=(1/(d5primeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d5primeprime+d5ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+26)=(1/(d6primeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+27)=(1/(d6primeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+28)=(1/(d6primeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+29)=(1/(d6primeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       e(12,(F-1)*channelsPerFrequency+30)=(1/(d6primeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d6primeprime+d6ref)*frequencies(F)/3e8);
                       
                       e(13,(F-1)*channelsPerFrequency+1)=(1/(d1primeprimeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+2)=(1/(d2primeprimeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+3)=(1/(d3primeprimeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+4)=(1/(d4primeprimeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+5)=(1/(d2primeprimeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+6)=(1/(d1primeprimeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+7)=(1/(d2primeprimeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+8)=(1/(d3primeprimeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+9)=(1/(d4primeprimeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+10)=(1/(d1primeprimeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+11)=(1/(d4primeprimeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+12)=(1/(d3primeprimeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       
                       e(13,(F-1)*channelsPerFrequency+13)=(1/(d1primeprimeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+14)=(1/(d2primeprimeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+15)=(1/(d3primeprimeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+16)=(1/(d4primeprimeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+17)=(1/(d5primeprimeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+18)=(1/(d5primeprimeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+19)=(1/(d5primeprimeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+20)=(1/(d5primeprimeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);

                       e(13,(F-1)*channelsPerFrequency+21)=(1/(d1primeprimeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+22)=(1/(d2primeprimeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+23)=(1/(d3primeprimeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+24)=(1/(d4primeprimeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+25)=(1/(d5primeprimeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+26)=(1/(d6primeprimeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+27)=(1/(d6primeprimeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+28)=(1/(d6primeprimeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+29)=(1/(d6primeprimeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(13,(F-1)*channelsPerFrequency+30)=(1/(d6primeprimeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                      
                       e(14,(F-1)*channelsPerFrequency+1)=(1/(d1primeprimeprime*d2))*exp(2*1j*pi*(d2-d2ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+2)=(1/(d2primeprimeprime*d3))*exp(2*1j*pi*(d3-d3ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+3)=(1/(d3primeprimeprime*d4))*exp(2*1j*pi*(d4-d4ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+4)=(1/(d4primeprimeprime*d1))*exp(2*1j*pi*(d1-d1ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+5)=(1/(d2primeprimeprime*d4))*exp(2*1j*pi*(d4-d4ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+6)=(1/(d1primeprimeprime*d3))*exp(2*1j*pi*(d3-d3ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+7)=(1/(d2primeprimeprime*d1))*exp(2*1j*pi*(d1-d1ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+8)=(1/(d3primeprimeprime*d2))*exp(2*1j*pi*(d2-d2ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+9)=(1/(d4primeprimeprime*d3))*exp(2*1j*pi*(d3-d3ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+10)=(1/(d1primeprimeprime*d4))*exp(2*1j*pi*(d4-d4ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+11)=(1/(d4primeprimeprime*d2))*exp(2*1j*pi*(d2-d2ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+12)=(1/(d3primeprimeprime*d1))*exp(2*1j*pi*(d1-d1ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       
                       e(14,(F-1)*channelsPerFrequency+13)=(1/(d1primeprimeprime*d5))*exp(2*1j*pi*(d5-d5ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+14)=(1/(d2primeprimeprime*d5))*exp(2*1j*pi*(d5-d5ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+15)=(1/(d3primeprimeprime*d5))*exp(2*1j*pi*(d5-d5ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+16)=(1/(d4primeprimeprime*d5))*exp(2*1j*pi*(d5-d5ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+17)=(1/(d5primeprimeprime*d1))*exp(2*1j*pi*(d1-d1ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+18)=(1/(d5primeprimeprime*d2))*exp(2*1j*pi*(d2-d2ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+19)=(1/(d5primeprimeprime*d3))*exp(2*1j*pi*(d3-d3ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+20)=(1/(d5primeprimeprime*d4))*exp(2*1j*pi*(d4-d4ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);

                       e(14,(F-1)*channelsPerFrequency+21)=(1/(d1primeprimeprime*d6))*exp(2*1j*pi*(d6-d6ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+22)=(1/(d2primeprimeprime*d6))*exp(2*1j*pi*(d6-d6ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+23)=(1/(d3primeprimeprime*d6))*exp(2*1j*pi*(d6-d6ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+24)=(1/(d4primeprimeprime*d6))*exp(2*1j*pi*(d6-d6ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+25)=(1/(d5primeprimeprime*d6))*exp(2*1j*pi*(d6-d6ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+26)=(1/(d6primeprimeprime*d1))*exp(2*1j*pi*(d1-d1ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+27)=(1/(d6primeprimeprime*d2))*exp(2*1j*pi*(d2-d2ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+28)=(1/(d6primeprimeprime*d3))*exp(2*1j*pi*(d3-d3ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+29)=(1/(d6primeprimeprime*d4))*exp(2*1j*pi*(d4-d4ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(14,(F-1)*channelsPerFrequency+30)=(1/(d6primeprimeprime*d5))*exp(2*1j*pi*(d5-d5ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       
                       e(15,(F-1)*channelsPerFrequency+1)=(1/(d1primeprimeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+2)=(1/(d2primeprimeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+3)=(1/(d3primeprimeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+4)=(1/(d4primeprimeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+5)=(1/(d2primeprimeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+6)=(1/(d1primeprimeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+7)=(1/(d2primeprimeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+8)=(1/(d3primeprimeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+9)=(1/(d4primeprimeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+10)=(1/(d1primeprimeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+11)=(1/(d4primeprimeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+12)=(1/(d3primeprimeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       
                       e(15,(F-1)*channelsPerFrequency+13)=(1/(d1primeprimeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+14)=(1/(d2primeprimeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+15)=(1/(d3primeprimeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+16)=(1/(d4primeprimeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+17)=(1/(d5primeprimeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+18)=(1/(d5primeprimeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+19)=(1/(d5primeprimeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+20)=(1/(d5primeprimeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);

                       e(15,(F-1)*channelsPerFrequency+21)=(1/(d1primeprimeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+22)=(1/(d2primeprimeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+23)=(1/(d3primeprimeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+24)=(1/(d4primeprimeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+25)=(1/(d5primeprimeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+26)=(1/(d6primeprimeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+27)=(1/(d6primeprimeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+28)=(1/(d6primeprimeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+29)=(1/(d6primeprimeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(15,(F-1)*channelsPerFrequency+30)=(1/(d6primeprimeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       
                       e(16,(F-1)*channelsPerFrequency+1)=(1/(d1primeprimeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+2)=(1/(d2primeprimeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+3)=(1/(d3primeprimeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+4)=(1/(d4primeprimeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+5)=(1/(d2primeprimeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+6)=(1/(d1primeprimeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+7)=(1/(d2primeprimeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+8)=(1/(d3primeprimeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+9)=(1/(d4primeprimeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+10)=(1/(d1primeprimeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+11)=(1/(d4primeprimeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+12)=(1/(d3primeprimeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       
                       e(16,(F-1)*channelsPerFrequency+13)=(1/(d1primeprimeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+14)=(1/(d2primeprimeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+15)=(1/(d3primeprimeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+16)=(1/(d4primeprimeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+17)=(1/(d5primeprimeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+18)=(1/(d5primeprimeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+19)=(1/(d5primeprimeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+20)=(1/(d5primeprimeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);

                       e(16,(F-1)*channelsPerFrequency+21)=(1/(d1primeprimeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d1primeprimeprime+d1ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+22)=(1/(d2primeprimeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d2primeprimeprime+d2ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+23)=(1/(d3primeprimeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d3primeprimeprime+d3ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+24)=(1/(d4primeprimeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d4primeprimeprime+d4ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+25)=(1/(d5primeprimeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d5primeprimeprime+d5ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+26)=(1/(d6primeprimeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+27)=(1/(d6primeprimeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+28)=(1/(d6primeprimeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+29)=(1/(d6primeprimeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                       e(16,(F-1)*channelsPerFrequency+30)=(1/(d6primeprimeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d6primeprimeprime+d6ref)*frequencies(F)/3e8);
                   end

alpha=chh12*pinv(e);

end


