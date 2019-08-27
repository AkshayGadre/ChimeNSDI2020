function chh12est = EstimateFrequency6BS4MP(a1,b1,a2,b2,a3,b3,a4,b4,frequency,alpha)
%UNTITLED33 Summary of this function goes here
%   Detailed explanation goes here
L2=[59.2912 0.01159 14.41];
L1=[-0.7902 7.3632 5.23029];
L3=[-8.37988 -32.3588 6.59];
L4=[-67.20 -25.207 27.339];
L5=[61.53 2.753 14.41];
L6=[60.37 1.286 14.41];
LRef=[17.544 -10.353 0.9368];
z=1;
e=zeros(9,20);
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
d1primeprimeprime=norm([a4 b4 z]-L1);
                            d2primeprimeprime=norm([a4 b4 z]-L2);
                            d3primeprimeprime=norm([a4 b4 z]-L3);
                            d4primeprimeprime=norm([a4 b4 z]-L4);
                            d5primeprimeprime=norm([a4 b4 z]-L5);
                            d6primeprimeprime=norm([a4 b4 z]-L6);
d1ref=norm(LRef-L1);
d2ref=norm(LRef-L2);
d3ref=norm(LRef-L3);
d4ref=norm(LRef-L4);
d5ref=norm(LRef-L5);
d6ref=norm(LRef-L6);
                  
                     e(1,1)=(1/(d1*d2))*exp(2*1j*pi*(d2-d2ref-d1+d1ref)*frequency/3e8);
                       e(1,2)=(1/(d2*d3))*exp(2*1j*pi*(d3-d3ref-d2+d2ref)*frequency/3e8);
                       e(1,3)=(1/(d3*d4))*exp(2*1j*pi*(d4-d4ref-d3+d3ref)*frequency/3e8);
                       e(1,4)=(1/(d4*d1))*exp(2*1j*pi*(d1-d1ref-d4+d4ref)*frequency/3e8);
                       e(1,5)=(1/(d2*d4))*exp(2*1j*pi*(d4-d4ref-d2+d2ref)*frequency/3e8);
                       e(1,6)=(1/(d1*d3))*exp(2*1j*pi*(d3-d3ref-d1+d1ref)*frequency/3e8);
                       e(1,7)=(1/(d2*d1))*exp(2*1j*pi*(d1-d1ref-d2+d2ref)*frequency/3e8);
                       e(1,8)=(1/(d3*d2))*exp(2*1j*pi*(d2-d2ref-d3+d3ref)*frequency/3e8);
                       e(1,9)=(1/(d4*d3))*exp(2*1j*pi*(d3-d3ref-d4+d4ref)*frequency/3e8);
                       e(1,10)=(1/(d1*d4))*exp(2*1j*pi*(d4-d4ref-d1+d1ref)*frequency/3e8);
                       e(1,11)=(1/(d4*d2))*exp(2*1j*pi*(d2-d2ref-d4+d4ref)*frequency/3e8);
                       e(1,12)=(1/(d3*d1))*exp(2*1j*pi*(d1-d1ref-d3+d3ref)*frequency/3e8);
                       
                       e(1,13)=(1/(d1*d5))*exp(2*1j*pi*(d5-d5ref-d1+d1ref)*frequency/3e8);
                       e(1,14)=(1/(d2*d5))*exp(2*1j*pi*(d5-d5ref-d2+d2ref)*frequency/3e8);
                       e(1,15)=(1/(d3*d5))*exp(2*1j*pi*(d5-d5ref-d3+d3ref)*frequency/3e8);
                       e(1,16)=(1/(d4*d5))*exp(2*1j*pi*(d5-d5ref-d4+d4ref)*frequency/3e8);
                       e(1,17)=(1/(d5*d1))*exp(2*1j*pi*(d1-d1ref-d5+d5ref)*frequency/3e8);
                       e(1,18)=(1/(d5*d2))*exp(2*1j*pi*(d2-d2ref-d5+d5ref)*frequency/3e8);
                       e(1,19)=(1/(d5*d3))*exp(2*1j*pi*(d3-d3ref-d5+d5ref)*frequency/3e8);
                       e(1,20)=(1/(d5*d4))*exp(2*1j*pi*(d4-d4ref-d5+d5ref)*frequency/3e8);

                       e(1,21)=(1/(d1*d6))*exp(2*1j*pi*(d6-d6ref-d1+d1ref)*frequency/3e8);
                       e(1,22)=(1/(d2*d6))*exp(2*1j*pi*(d6-d6ref-d2+d2ref)*frequency/3e8);
                       e(1,23)=(1/(d3*d6))*exp(2*1j*pi*(d6-d6ref-d3+d3ref)*frequency/3e8);
                       e(1,24)=(1/(d4*d6))*exp(2*1j*pi*(d6-d6ref-d4+d4ref)*frequency/3e8);
                       e(1,25)=(1/(d5*d6))*exp(2*1j*pi*(d6-d6ref-d5+d5ref)*frequency/3e8);
                       e(1,26)=(1/(d6*d1))*exp(2*1j*pi*(d1-d1ref-d6+d6ref)*frequency/3e8);
                       e(1,27)=(1/(d6*d2))*exp(2*1j*pi*(d2-d2ref-d6+d6ref)*frequency/3e8);
                       e(1,28)=(1/(d6*d3))*exp(2*1j*pi*(d3-d3ref-d6+d6ref)*frequency/3e8);
                       e(1,29)=(1/(d6*d4))*exp(2*1j*pi*(d4-d4ref-d6+d6ref)*frequency/3e8);
                       e(1,30)=(1/(d6*d5))*exp(2*1j*pi*(d5-d5ref-d6+d6ref)*frequency/3e8);


                       e(2,1)=(1/(d1prime*d2))*exp(2*1j*pi*(d2-d2ref-d1prime+d1ref)*frequency/3e8);
                       e(2,2)=(1/(d2prime*d3))*exp(2*1j*pi*(d3-d3ref-d2prime+d2ref)*frequency/3e8);
                       e(2,3)=(1/(d3prime*d4))*exp(2*1j*pi*(d4-d4ref-d3prime+d3ref)*frequency/3e8);
                       e(2,4)=(1/(d4prime*d1))*exp(2*1j*pi*(d1-d1ref-d4prime+d4ref)*frequency/3e8);
                       e(2,5)=(1/(d2prime*d4))*exp(2*1j*pi*(d4-d4ref-d2prime+d2ref)*frequency/3e8);
                       e(2,6)=(1/(d1prime*d3))*exp(2*1j*pi*(d3-d3ref-d1prime+d1ref)*frequency/3e8);
                       e(2,7)=(1/(d2prime*d1))*exp(2*1j*pi*(d1-d1ref-d2prime+d2ref)*frequency/3e8);
                       e(2,8)=(1/(d3prime*d2))*exp(2*1j*pi*(d2-d2ref-d3prime+d3ref)*frequency/3e8);
                       e(2,9)=(1/(d4prime*d3))*exp(2*1j*pi*(d3-d3ref-d4prime+d4ref)*frequency/3e8);
                       e(2,10)=(1/(d1prime*d4))*exp(2*1j*pi*(d4-d4ref-d1prime+d1ref)*frequency/3e8);
                       e(2,11)=(1/(d4prime*d2))*exp(2*1j*pi*(d2-d2ref-d4prime+d4ref)*frequency/3e8);
                       e(2,12)=(1/(d3prime*d1))*exp(2*1j*pi*(d1-d1ref-d3prime+d3ref)*frequency/3e8);
                       
                       e(2,13)=(1/(d1prime*d5))*exp(2*1j*pi*(d5-d5ref-d1prime+d1ref)*frequency/3e8);
                       e(2,14)=(1/(d2prime*d5))*exp(2*1j*pi*(d5-d5ref-d2prime+d2ref)*frequency/3e8);
                       e(2,15)=(1/(d3prime*d5))*exp(2*1j*pi*(d5-d5ref-d3prime+d3ref)*frequency/3e8);
                       e(2,16)=(1/(d4prime*d5))*exp(2*1j*pi*(d5-d5ref-d4prime+d4ref)*frequency/3e8);
                       e(2,17)=(1/(d5prime*d1))*exp(2*1j*pi*(d1-d1ref-d5prime+d5ref)*frequency/3e8);
                       e(2,18)=(1/(d5prime*d2))*exp(2*1j*pi*(d2-d2ref-d5prime+d5ref)*frequency/3e8);
                       e(2,19)=(1/(d5prime*d3))*exp(2*1j*pi*(d3-d3ref-d5prime+d5ref)*frequency/3e8);
                       e(2,20)=(1/(d5prime*d4))*exp(2*1j*pi*(d4-d4ref-d5prime+d5ref)*frequency/3e8);

                       e(2,21)=(1/(d1prime*d6))*exp(2*1j*pi*(d6-d6ref-d1prime+d1ref)*frequency/3e8);
                       e(2,22)=(1/(d2prime*d6))*exp(2*1j*pi*(d6-d6ref-d2prime+d2ref)*frequency/3e8);
                       e(2,23)=(1/(d3prime*d6))*exp(2*1j*pi*(d6-d6ref-d3prime+d3ref)*frequency/3e8);
                       e(2,24)=(1/(d4prime*d6))*exp(2*1j*pi*(d6-d6ref-d4prime+d4ref)*frequency/3e8);
                       e(2,25)=(1/(d5prime*d6))*exp(2*1j*pi*(d6-d6ref-d5prime+d5ref)*frequency/3e8);
                       e(2,26)=(1/(d6prime*d1))*exp(2*1j*pi*(d1-d1ref-d6prime+d6ref)*frequency/3e8);
                       e(2,27)=(1/(d6prime*d2))*exp(2*1j*pi*(d2-d2ref-d6prime+d6ref)*frequency/3e8);
                       e(2,28)=(1/(d6prime*d3))*exp(2*1j*pi*(d3-d3ref-d6prime+d6ref)*frequency/3e8);
                       e(2,29)=(1/(d6prime*d4))*exp(2*1j*pi*(d4-d4ref-d6prime+d6ref)*frequency/3e8);
                       e(2,30)=(1/(d6prime*d5))*exp(2*1j*pi*(d5-d5ref-d6prime+d6ref)*frequency/3e8);
                       
                       
                       e(3,1)=(1/(d1*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d1+d1ref)*frequency/3e8);
                       e(3,2)=(1/(d2*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d2+d2ref)*frequency/3e8);
                       e(3,3)=(1/(d3*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d3+d3ref)*frequency/3e8);
                       e(3,4)=(1/(d4*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d4+d4ref)*frequency/3e8);
                       e(3,5)=(1/(d2*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d2+d2ref)*frequency/3e8);
                       e(3,6)=(1/(d1*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d1+d1ref)*frequency/3e8);
                       e(3,7)=(1/(d2*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d2+d2ref)*frequency/3e8);
                       e(3,8)=(1/(d3*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d3+d3ref)*frequency/3e8);
                       e(3,9)=(1/(d4*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d4+d4ref)*frequency/3e8);
                       e(3,10)=(1/(d1*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d1+d1ref)*frequency/3e8);
                       e(3,11)=(1/(d4*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d4+d4ref)*frequency/3e8);
                       e(3,12)=(1/(d3*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d3+d3ref)*frequency/3e8);
                       
                       e(3,13)=(1/(d1*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d1+d1ref)*frequency/3e8);
                       e(3,14)=(1/(d2*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d2+d2ref)*frequency/3e8);
                       e(3,15)=(1/(d3*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d3+d3ref)*frequency/3e8);
                       e(3,16)=(1/(d4*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d4+d4ref)*frequency/3e8);
                       e(3,17)=(1/(d5*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d5+d5ref)*frequency/3e8);
                       e(3,18)=(1/(d5*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d5+d5ref)*frequency/3e8);
                       e(3,19)=(1/(d5*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d5+d5ref)*frequency/3e8);
                       e(3,20)=(1/(d5*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d5+d5ref)*frequency/3e8);

                       e(3,21)=(1/(d1*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d1+d1ref)*frequency/3e8);
                       e(3,22)=(1/(d2*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d2+d2ref)*frequency/3e8);
                       e(3,23)=(1/(d3*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d3+d3ref)*frequency/3e8);
                       e(3,24)=(1/(d4*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d4+d4ref)*frequency/3e8);
                       e(3,25)=(1/(d5*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d5+d5ref)*frequency/3e8);
                       e(3,26)=(1/(d6*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d6+d6ref)*frequency/3e8);
                       e(3,27)=(1/(d6*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d6+d6ref)*frequency/3e8);
                       e(3,28)=(1/(d6*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d6+d6ref)*frequency/3e8);
                       e(3,29)=(1/(d6*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d6+d6ref)*frequency/3e8);
                       e(3,30)=(1/(d6*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d6+d6ref)*frequency/3e8);
                       
                       e(4,1)=(1/(d1prime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d1prime+d1ref)*frequency/3e8);
                       e(4,2)=(1/(d2prime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d2prime+d2ref)*frequency/3e8);
                       e(4,3)=(1/(d3prime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d3prime+d3ref)*frequency/3e8);
                       e(4,4)=(1/(d4prime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d4prime+d4ref)*frequency/3e8);
                       e(4,5)=(1/(d2prime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d2prime+d2ref)*frequency/3e8);
                       e(4,6)=(1/(d1prime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d1prime+d1ref)*frequency/3e8);
                       e(4,7)=(1/(d2prime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d2prime+d2ref)*frequency/3e8);
                       e(4,8)=(1/(d3prime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d3prime+d3ref)*frequency/3e8);
                       e(4,9)=(1/(d4prime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d4prime+d4ref)*frequency/3e8);
                       e(4,10)=(1/(d1prime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d1prime+d1ref)*frequency/3e8);
                       e(4,11)=(1/(d4prime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d4prime+d4ref)*frequency/3e8);
                       e(4,12)=(1/(d3prime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d3prime+d3ref)*frequency/3e8);
                       
                       
                       e(4,13)=(1/(d1prime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d1prime+d1ref)*frequency/3e8);
                       e(4,14)=(1/(d2prime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d2prime+d2ref)*frequency/3e8);
                       e(4,15)=(1/(d3prime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d3prime+d3ref)*frequency/3e8);
                       e(4,16)=(1/(d4prime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d4prime+d4ref)*frequency/3e8);
                       e(4,17)=(1/(d5prime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d5prime+d5ref)*frequency/3e8);
                       e(4,18)=(1/(d5prime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d5prime+d5ref)*frequency/3e8);
                       e(4,19)=(1/(d5prime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d5prime+d5ref)*frequency/3e8);
                       e(4,20)=(1/(d5prime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d5prime+d5ref)*frequency/3e8);

                       e(4,21)=(1/(d1prime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d1prime+d1ref)*frequency/3e8);
                       e(4,22)=(1/(d2prime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d2prime+d2ref)*frequency/3e8);
                       e(4,23)=(1/(d3prime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d3prime+d3ref)*frequency/3e8);
                       e(4,24)=(1/(d4prime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d4prime+d4ref)*frequency/3e8);
                       e(4,25)=(1/(d5prime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d5prime+d5ref)*frequency/3e8);
                       e(4,26)=(1/(d6prime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d6prime+d6ref)*frequency/3e8);
                       e(4,27)=(1/(d6prime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d6prime+d6ref)*frequency/3e8);
                       e(4,28)=(1/(d6prime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d6prime+d6ref)*frequency/3e8);
                       e(4,29)=(1/(d6prime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d6prime+d6ref)*frequency/3e8);
                       e(4,30)=(1/(d6prime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d6prime+d6ref)*frequency/3e8);
                       
                       e(5,1)=(1/(d1primeprime*d2))*exp(2*1j*pi*(d2-d2ref-d1primeprime+d1ref)*frequency/3e8);
                       e(5,2)=(1/(d2primeprime*d3))*exp(2*1j*pi*(d3-d3ref-d2primeprime+d2ref)*frequency/3e8);
                       e(5,3)=(1/(d3primeprime*d4))*exp(2*1j*pi*(d4-d4ref-d3primeprime+d3ref)*frequency/3e8);
                       e(5,4)=(1/(d4primeprime*d1))*exp(2*1j*pi*(d1-d1ref-d4primeprime+d4ref)*frequency/3e8);
                       e(5,5)=(1/(d2primeprime*d4))*exp(2*1j*pi*(d4-d4ref-d2primeprime+d2ref)*frequency/3e8);
                       e(5,6)=(1/(d1primeprime*d3))*exp(2*1j*pi*(d3-d3ref-d1primeprime+d1ref)*frequency/3e8);
                       e(5,7)=(1/(d2primeprime*d1))*exp(2*1j*pi*(d1-d1ref-d2primeprime+d2ref)*frequency/3e8);
                       e(5,8)=(1/(d3primeprime*d2))*exp(2*1j*pi*(d2-d2ref-d3primeprime+d3ref)*frequency/3e8);
                       e(5,9)=(1/(d4primeprime*d3))*exp(2*1j*pi*(d3-d3ref-d4primeprime+d4ref)*frequency/3e8);
                       e(5,10)=(1/(d1primeprime*d4))*exp(2*1j*pi*(d4-d4ref-d1primeprime+d1ref)*frequency/3e8);
                       e(5,11)=(1/(d4primeprime*d2))*exp(2*1j*pi*(d2-d2ref-d4primeprime+d4ref)*frequency/3e8);
                       e(5,12)=(1/(d3primeprime*d1))*exp(2*1j*pi*(d1-d1ref-d3primeprime+d3ref)*frequency/3e8);
                       
                       e(5,13)=(1/(d1primeprime*d5))*exp(2*1j*pi*(d5-d5ref-d1primeprime+d1ref)*frequency/3e8);
                       e(5,14)=(1/(d2primeprime*d5))*exp(2*1j*pi*(d5-d5ref-d2primeprime+d2ref)*frequency/3e8);
                       e(5,15)=(1/(d3primeprime*d5))*exp(2*1j*pi*(d5-d5ref-d3primeprime+d3ref)*frequency/3e8);
                       e(5,16)=(1/(d4primeprime*d5))*exp(2*1j*pi*(d5-d5ref-d4primeprime+d4ref)*frequency/3e8);
                       e(5,17)=(1/(d5primeprime*d1))*exp(2*1j*pi*(d1-d1ref-d5primeprime+d5ref)*frequency/3e8);
                       e(5,18)=(1/(d5primeprime*d2))*exp(2*1j*pi*(d2-d2ref-d5primeprime+d5ref)*frequency/3e8);
                       e(5,19)=(1/(d5primeprime*d3))*exp(2*1j*pi*(d3-d3ref-d5primeprime+d5ref)*frequency/3e8);
                       e(5,20)=(1/(d5primeprime*d4))*exp(2*1j*pi*(d4-d4ref-d5primeprime+d5ref)*frequency/3e8);

                       e(5,21)=(1/(d1primeprime*d6))*exp(2*1j*pi*(d6-d6ref-d1primeprime+d1ref)*frequency/3e8);
                       e(5,22)=(1/(d2primeprime*d6))*exp(2*1j*pi*(d6-d6ref-d2primeprime+d2ref)*frequency/3e8);
                       e(5,23)=(1/(d3primeprime*d6))*exp(2*1j*pi*(d6-d6ref-d3primeprime+d3ref)*frequency/3e8);
                       e(5,24)=(1/(d4primeprime*d6))*exp(2*1j*pi*(d6-d6ref-d4primeprime+d4ref)*frequency/3e8);
                       e(5,25)=(1/(d5primeprime*d6))*exp(2*1j*pi*(d6-d6ref-d5primeprime+d5ref)*frequency/3e8);
                       e(5,26)=(1/(d6primeprime*d1))*exp(2*1j*pi*(d1-d1ref-d6primeprime+d6ref)*frequency/3e8);
                       e(5,27)=(1/(d6primeprime*d2))*exp(2*1j*pi*(d2-d2ref-d6primeprime+d6ref)*frequency/3e8);
                       e(5,28)=(1/(d6primeprime*d3))*exp(2*1j*pi*(d3-d3ref-d6primeprime+d6ref)*frequency/3e8);
                       e(5,29)=(1/(d6primeprime*d4))*exp(2*1j*pi*(d4-d4ref-d6primeprime+d6ref)*frequency/3e8);
                       e(5,30)=(1/(d6primeprime*d5))*exp(2*1j*pi*(d5-d5ref-d6primeprime+d6ref)*frequency/3e8);
                       
                       e(6,1)=(1/(d1*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d1+d1ref)*frequency/3e8);
                       e(6,2)=(1/(d2*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d2+d2ref)*frequency/3e8);
                       e(6,3)=(1/(d3*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d3+d3ref)*frequency/3e8);
                       e(6,4)=(1/(d4*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d4+d4ref)*frequency/3e8);
                       e(6,5)=(1/(d2*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d2+d2ref)*frequency/3e8);
                       e(6,6)=(1/(d1*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d1+d1ref)*frequency/3e8);
                       e(6,7)=(1/(d2*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d2+d2ref)*frequency/3e8);
                       e(6,8)=(1/(d3*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d3+d3ref)*frequency/3e8);
                       e(6,9)=(1/(d4*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d4+d4ref)*frequency/3e8);
                       e(6,10)=(1/(d1*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d1+d1ref)*frequency/3e8);
                       e(6,11)=(1/(d4*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d4+d4ref)*frequency/3e8);
                       e(6,12)=(1/(d3*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d3+d3ref)*frequency/3e8);
                       
                       e(6,13)=(1/(d1*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d1+d1ref)*frequency/3e8);
                       e(6,14)=(1/(d2*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d2+d2ref)*frequency/3e8);
                       e(6,15)=(1/(d3*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d3+d3ref)*frequency/3e8);
                       e(6,16)=(1/(d4*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d4+d4ref)*frequency/3e8);
                       e(6,17)=(1/(d5*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d5+d5ref)*frequency/3e8);
                       e(6,18)=(1/(d5*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d5+d5ref)*frequency/3e8);
                       e(6,19)=(1/(d5*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d5+d5ref)*frequency/3e8);
                       e(6,20)=(1/(d5*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d5+d5ref)*frequency/3e8);

                       e(6,21)=(1/(d1*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d1+d1ref)*frequency/3e8);
                       e(6,22)=(1/(d2*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d2+d2ref)*frequency/3e8);
                       e(6,23)=(1/(d3*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d3+d3ref)*frequency/3e8);
                       e(6,24)=(1/(d4*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d4+d4ref)*frequency/3e8);
                       e(6,25)=(1/(d5*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d5+d5ref)*frequency/3e8);
                       e(6,26)=(1/(d6*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d6+d6ref)*frequency/3e8);
                       e(6,27)=(1/(d6*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d6+d6ref)*frequency/3e8);
                       e(6,28)=(1/(d6*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d6+d6ref)*frequency/3e8);
                       e(6,29)=(1/(d6*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d6+d6ref)*frequency/3e8);
                       e(6,30)=(1/(d6*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d6+d6ref)*frequency/3e8);
                       
                       e(7,1)=(1/(d1primeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d1primeprime+d1ref)*frequency/3e8);
                       e(7,2)=(1/(d2primeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d2primeprime+d2ref)*frequency/3e8);
                       e(7,3)=(1/(d3primeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d3primeprime+d3ref)*frequency/3e8);
                       e(7,4)=(1/(d4primeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d4primeprime+d4ref)*frequency/3e8);
                       e(7,5)=(1/(d2primeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d2primeprime+d2ref)*frequency/3e8);
                       e(7,6)=(1/(d1primeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d1primeprime+d1ref)*frequency/3e8);
                       e(7,7)=(1/(d2primeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d2primeprime+d2ref)*frequency/3e8);
                       e(7,8)=(1/(d3primeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d3primeprime+d3ref)*frequency/3e8);
                       e(7,9)=(1/(d4primeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d4primeprime+d4ref)*frequency/3e8);
                       e(7,10)=(1/(d1primeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d1primeprime+d1ref)*frequency/3e8);
                       e(7,11)=(1/(d4primeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d4primeprime+d4ref)*frequency/3e8);
                       e(7,12)=(1/(d3primeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d3primeprime+d3ref)*frequency/3e8);
                       
                       
                       e(7,13)=(1/(d1primeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d1primeprime+d1ref)*frequency/3e8);
                       e(7,14)=(1/(d2primeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d2primeprime+d2ref)*frequency/3e8);
                       e(7,15)=(1/(d3primeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d3primeprime+d3ref)*frequency/3e8);
                       e(7,16)=(1/(d4primeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d4primeprime+d4ref)*frequency/3e8);
                       e(7,17)=(1/(d5primeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d5primeprime+d5ref)*frequency/3e8);
                       e(7,18)=(1/(d5primeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d5primeprime+d5ref)*frequency/3e8);
                       e(7,19)=(1/(d5primeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d5primeprime+d5ref)*frequency/3e8);
                       e(7,20)=(1/(d5primeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d5primeprime+d5ref)*frequency/3e8);

                       e(7,21)=(1/(d1primeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d1primeprime+d1ref)*frequency/3e8);
                       e(7,22)=(1/(d2primeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d2primeprime+d2ref)*frequency/3e8);
                       e(7,23)=(1/(d3primeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d3primeprime+d3ref)*frequency/3e8);
                       e(7,24)=(1/(d4primeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d4primeprime+d4ref)*frequency/3e8);
                       e(7,25)=(1/(d5primeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d5primeprime+d5ref)*frequency/3e8);
                       e(7,26)=(1/(d6primeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d6primeprime+d6ref)*frequency/3e8);
                       e(7,27)=(1/(d6primeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d6primeprime+d6ref)*frequency/3e8);
                       e(7,28)=(1/(d6primeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d6primeprime+d6ref)*frequency/3e8);
                       e(7,29)=(1/(d6primeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d6primeprime+d6ref)*frequency/3e8);
                       e(7,30)=(1/(d6primeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d6primeprime+d6ref)*frequency/3e8);
                       
                       e(8,1)=(1/(d1prime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d1prime+d1ref)*frequency/3e8);
                       e(8,2)=(1/(d2prime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d2prime+d2ref)*frequency/3e8);
                       e(8,3)=(1/(d3prime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d3prime+d3ref)*frequency/3e8);
                       e(8,4)=(1/(d4prime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d4prime+d4ref)*frequency/3e8);
                       e(8,5)=(1/(d2prime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d2prime+d2ref)*frequency/3e8);
                       e(8,6)=(1/(d1prime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d1prime+d1ref)*frequency/3e8);
                       e(8,7)=(1/(d2prime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d2prime+d2ref)*frequency/3e8);
                       e(8,8)=(1/(d3prime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d3prime+d3ref)*frequency/3e8);
                       e(8,9)=(1/(d4prime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d4prime+d4ref)*frequency/3e8);
                       e(8,10)=(1/(d1prime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d1prime+d1ref)*frequency/3e8);
                       e(8,11)=(1/(d4prime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d4prime+d4ref)*frequency/3e8);
                       e(8,12)=(1/(d3prime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d3prime+d3ref)*frequency/3e8);
                       
                       
                       e(8,13)=(1/(d1prime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d1prime+d1ref)*frequency/3e8);
                       e(8,14)=(1/(d2prime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d2prime+d2ref)*frequency/3e8);
                       e(8,15)=(1/(d3prime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d3prime+d3ref)*frequency/3e8);
                       e(8,16)=(1/(d4prime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d4prime+d4ref)*frequency/3e8);
                       e(8,17)=(1/(d5prime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d5prime+d5ref)*frequency/3e8);
                       e(8,18)=(1/(d5prime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d5prime+d5ref)*frequency/3e8);
                       e(8,19)=(1/(d5prime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d5prime+d5ref)*frequency/3e8);
                       e(8,20)=(1/(d5prime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d5prime+d5ref)*frequency/3e8);

                       e(8,21)=(1/(d1prime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d1prime+d1ref)*frequency/3e8);
                       e(8,22)=(1/(d2prime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d2prime+d2ref)*frequency/3e8);
                       e(8,23)=(1/(d3prime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d3prime+d3ref)*frequency/3e8);
                       e(8,24)=(1/(d4prime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d4prime+d4ref)*frequency/3e8);
                       e(8,25)=(1/(d5prime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d5prime+d5ref)*frequency/3e8);
                       e(8,26)=(1/(d6prime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d6prime+d6ref)*frequency/3e8);
                       e(8,27)=(1/(d6prime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d6prime+d6ref)*frequency/3e8);
                       e(8,28)=(1/(d6prime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d6prime+d6ref)*frequency/3e8);
                       e(8,29)=(1/(d6prime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d6prime+d6ref)*frequency/3e8);
                       e(8,30)=(1/(d6prime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d6prime+d6ref)*frequency/3e8);
                       
                       e(9,1)=(1/(d1primeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d1primeprime+d1ref)*frequency/3e8);
                       e(9,2)=(1/(d2primeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d2primeprime+d2ref)*frequency/3e8);
                       e(9,3)=(1/(d3primeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d3primeprime+d3ref)*frequency/3e8);
                       e(9,4)=(1/(d4primeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d4primeprime+d4ref)*frequency/3e8);
                       e(9,5)=(1/(d2primeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d2primeprime+d2ref)*frequency/3e8);
                       e(9,6)=(1/(d1primeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d1primeprime+d1ref)*frequency/3e8);
                       e(9,7)=(1/(d2primeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d2primeprime+d2ref)*frequency/3e8);
                       e(9,8)=(1/(d3primeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d3primeprime+d3ref)*frequency/3e8);
                       e(9,9)=(1/(d4primeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d4primeprime+d4ref)*frequency/3e8);
                       e(9,10)=(1/(d1primeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d1primeprime+d1ref)*frequency/3e8);
                       e(9,11)=(1/(d4primeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d4primeprime+d4ref)*frequency/3e8);
                       e(9,12)=(1/(d3primeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d3primeprime+d3ref)*frequency/3e8);
                       
                       
                       e(9,13)=(1/(d1primeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d1primeprime+d1ref)*frequency/3e8);
                       e(9,14)=(1/(d2primeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d2primeprime+d2ref)*frequency/3e8);
                       e(9,15)=(1/(d3primeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d3primeprime+d3ref)*frequency/3e8);
                       e(9,16)=(1/(d4primeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d4primeprime+d4ref)*frequency/3e8);
                       e(9,17)=(1/(d5primeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d5primeprime+d5ref)*frequency/3e8);
                       e(9,18)=(1/(d5primeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d5primeprime+d5ref)*frequency/3e8);
                       e(9,19)=(1/(d5primeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d5primeprime+d5ref)*frequency/3e8);
                       e(9,20)=(1/(d5primeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d5primeprime+d5ref)*frequency/3e8);

                       e(9,21)=(1/(d1primeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d1primeprime+d1ref)*frequency/3e8);
                       e(9,22)=(1/(d2primeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d2primeprime+d2ref)*frequency/3e8);
                       e(9,23)=(1/(d3primeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d3primeprime+d3ref)*frequency/3e8);
                       e(9,24)=(1/(d4primeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d4primeprime+d4ref)*frequency/3e8);
                       e(9,25)=(1/(d5primeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d5primeprime+d5ref)*frequency/3e8);
                       e(9,26)=(1/(d6primeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d6primeprime+d6ref)*frequency/3e8);
                       e(9,27)=(1/(d6primeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d6primeprime+d6ref)*frequency/3e8);
                       e(9,28)=(1/(d6primeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d6primeprime+d6ref)*frequency/3e8);
                       e(9,29)=(1/(d6primeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d6primeprime+d6ref)*frequency/3e8);
                       e(9,30)=(1/(d6primeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d6primeprime+d6ref)*frequency/3e8);
                       
                       e(10,1)=(1/(d1*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d1+d1ref)*frequency/3e8);
                       e(10,2)=(1/(d2*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d2+d2ref)*frequency/3e8);
                       e(10,3)=(1/(d3*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d3+d3ref)*frequency/3e8);
                       e(10,4)=(1/(d4*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d4+d4ref)*frequency/3e8);
                       e(10,5)=(1/(d2*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d2+d2ref)*frequency/3e8);
                       e(10,6)=(1/(d1*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d1+d1ref)*frequency/3e8);
                       e(10,7)=(1/(d2*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d2+d2ref)*frequency/3e8);
                       e(10,8)=(1/(d3*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d3+d3ref)*frequency/3e8);
                       e(10,9)=(1/(d4*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d4+d4ref)*frequency/3e8);
                       e(10,10)=(1/(d1*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d1+d1ref)*frequency/3e8);
                       e(10,11)=(1/(d4*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d4+d4ref)*frequency/3e8);
                       e(10,12)=(1/(d3*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d3+d3ref)*frequency/3e8);
                       
                       e(10,13)=(1/(d1*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d1+d1ref)*frequency/3e8);
                       e(10,14)=(1/(d2*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d2+d2ref)*frequency/3e8);
                       e(10,15)=(1/(d3*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d3+d3ref)*frequency/3e8);
                       e(10,16)=(1/(d4*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d4+d4ref)*frequency/3e8);
                       e(10,17)=(1/(d5*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d5+d5ref)*frequency/3e8);
                       e(10,18)=(1/(d5*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d5+d5ref)*frequency/3e8);
                       e(10,19)=(1/(d5*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d5+d5ref)*frequency/3e8);
                       e(10,20)=(1/(d5*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d5+d5ref)*frequency/3e8);

                       e(10,21)=(1/(d1*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d1+d1ref)*frequency/3e8);
                       e(10,22)=(1/(d2*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d2+d2ref)*frequency/3e8);
                       e(10,23)=(1/(d3*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d3+d3ref)*frequency/3e8);
                       e(10,24)=(1/(d4*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d4+d4ref)*frequency/3e8);
                       e(10,25)=(1/(d5*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d5+d5ref)*frequency/3e8);
                       e(10,26)=(1/(d6*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d6+d6ref)*frequency/3e8);
                       e(10,27)=(1/(d6*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d6+d6ref)*frequency/3e8);
                       e(10,28)=(1/(d6*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d6+d6ref)*frequency/3e8);
                       e(10,29)=(1/(d6*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d6+d6ref)*frequency/3e8);
                       e(10,30)=(1/(d6*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d6+d6ref)*frequency/3e8);
                       
                       e(11,1)=(1/(d1prime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d1prime+d1ref)*frequency/3e8);
                       e(11,2)=(1/(d2prime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d2prime+d2ref)*frequency/3e8);
                       e(11,3)=(1/(d3prime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d3prime+d3ref)*frequency/3e8);
                       e(11,4)=(1/(d4prime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d4prime+d4ref)*frequency/3e8);
                       e(11,5)=(1/(d2prime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d2prime+d2ref)*frequency/3e8);
                       e(11,6)=(1/(d1prime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d1prime+d1ref)*frequency/3e8);
                       e(11,7)=(1/(d2prime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d2prime+d2ref)*frequency/3e8);
                       e(11,8)=(1/(d3prime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d3prime+d3ref)*frequency/3e8);
                       e(11,9)=(1/(d4prime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d4prime+d4ref)*frequency/3e8);
                       e(11,10)=(1/(d1prime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d1prime+d1ref)*frequency/3e8);
                       e(11,11)=(1/(d4prime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d4prime+d4ref)*frequency/3e8);
                       e(11,12)=(1/(d3prime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d3prime+d3ref)*frequency/3e8);
                       
                       e(11,13)=(1/(d1prime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d1prime+d1ref)*frequency/3e8);
                       e(11,14)=(1/(d2prime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d2prime+d2ref)*frequency/3e8);
                       e(11,15)=(1/(d3prime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d3prime+d3ref)*frequency/3e8);
                       e(11,16)=(1/(d4prime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d4prime+d4ref)*frequency/3e8);
                       e(11,17)=(1/(d5prime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d5prime+d5ref)*frequency/3e8);
                       e(11,18)=(1/(d5prime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d5prime+d5ref)*frequency/3e8);
                       e(11,19)=(1/(d5prime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d5prime+d5ref)*frequency/3e8);
                       e(11,20)=(1/(d5prime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d5prime+d5ref)*frequency/3e8);

                       e(11,21)=(1/(d1prime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d1prime+d1ref)*frequency/3e8);
                       e(11,22)=(1/(d2prime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d2prime+d2ref)*frequency/3e8);
                       e(11,23)=(1/(d3prime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d3prime+d3ref)*frequency/3e8);
                       e(11,24)=(1/(d4prime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d4prime+d4ref)*frequency/3e8);
                       e(11,25)=(1/(d5prime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d5prime+d5ref)*frequency/3e8);
                       e(11,26)=(1/(d6prime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d6prime+d6ref)*frequency/3e8);
                       e(11,27)=(1/(d6prime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d6prime+d6ref)*frequency/3e8);
                       e(11,28)=(1/(d6prime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d6prime+d6ref)*frequency/3e8);
                       e(11,29)=(1/(d6prime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d6prime+d6ref)*frequency/3e8);
                       e(11,30)=(1/(d6prime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d6prime+d6ref)*frequency/3e8);
                       
                       e(12,1)=(1/(d1primeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d1primeprime+d1ref)*frequency/3e8);
                       e(12,2)=(1/(d2primeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d2primeprime+d2ref)*frequency/3e8);
                       e(12,3)=(1/(d3primeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d3primeprime+d3ref)*frequency/3e8);
                       e(12,4)=(1/(d4primeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d4primeprime+d4ref)*frequency/3e8);
                       e(12,5)=(1/(d2primeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d2primeprime+d2ref)*frequency/3e8);
                       e(12,6)=(1/(d1primeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d1primeprime+d1ref)*frequency/3e8);
                       e(12,7)=(1/(d2primeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d2primeprime+d2ref)*frequency/3e8);
                       e(12,8)=(1/(d3primeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d3primeprime+d3ref)*frequency/3e8);
                       e(12,9)=(1/(d4primeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d4primeprime+d4ref)*frequency/3e8);
                       e(12,10)=(1/(d1primeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d1primeprime+d1ref)*frequency/3e8);
                       e(12,11)=(1/(d4primeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d4primeprime+d4ref)*frequency/3e8);
                       e(12,12)=(1/(d3primeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d3primeprime+d3ref)*frequency/3e8);
                       
                       e(12,13)=(1/(d1primeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d1primeprime+d1ref)*frequency/3e8);
                       e(12,14)=(1/(d2primeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d2primeprime+d2ref)*frequency/3e8);
                       e(12,15)=(1/(d3primeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d3primeprime+d3ref)*frequency/3e8);
                       e(12,16)=(1/(d4primeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d4primeprime+d4ref)*frequency/3e8);
                       e(12,17)=(1/(d5primeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d5primeprime+d5ref)*frequency/3e8);
                       e(12,18)=(1/(d5primeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d5primeprime+d5ref)*frequency/3e8);
                       e(12,19)=(1/(d5primeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d5primeprime+d5ref)*frequency/3e8);
                       e(12,20)=(1/(d5primeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d5primeprime+d5ref)*frequency/3e8);

                       e(12,21)=(1/(d1primeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d1primeprime+d1ref)*frequency/3e8);
                       e(12,22)=(1/(d2primeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d2primeprime+d2ref)*frequency/3e8);
                       e(12,23)=(1/(d3primeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d3primeprime+d3ref)*frequency/3e8);
                       e(12,24)=(1/(d4primeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d4primeprime+d4ref)*frequency/3e8);
                       e(12,25)=(1/(d5primeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d5primeprime+d5ref)*frequency/3e8);
                       e(12,26)=(1/(d6primeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d6primeprime+d6ref)*frequency/3e8);
                       e(12,27)=(1/(d6primeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d6primeprime+d6ref)*frequency/3e8);
                       e(12,28)=(1/(d6primeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d6primeprime+d6ref)*frequency/3e8);
                       e(12,29)=(1/(d6primeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d6primeprime+d6ref)*frequency/3e8);
                       e(12,30)=(1/(d6primeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d6primeprime+d6ref)*frequency/3e8);
                       
                       e(13,1)=(1/(d1primeprimeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(13,2)=(1/(d2primeprimeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(13,3)=(1/(d3primeprimeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(13,4)=(1/(d4primeprimeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(13,5)=(1/(d2primeprimeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(13,6)=(1/(d1primeprimeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(13,7)=(1/(d2primeprimeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(13,8)=(1/(d3primeprimeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(13,9)=(1/(d4primeprimeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(13,10)=(1/(d1primeprimeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(13,11)=(1/(d4primeprimeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(13,12)=(1/(d3primeprimeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       
                       e(13,13)=(1/(d1primeprimeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(13,14)=(1/(d2primeprimeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(13,15)=(1/(d3primeprimeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(13,16)=(1/(d4primeprimeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(13,17)=(1/(d5primeprimeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(13,18)=(1/(d5primeprimeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(13,19)=(1/(d5primeprimeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(13,20)=(1/(d5primeprimeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d5primeprimeprime+d5ref)*frequency/3e8);

                       e(13,21)=(1/(d1primeprimeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(13,22)=(1/(d2primeprimeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(13,23)=(1/(d3primeprimeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(13,24)=(1/(d4primeprimeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(13,25)=(1/(d5primeprimeprime*d6primeprimeprime))*exp(2*1j*pi*(d6primeprimeprime-d6ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(13,26)=(1/(d6primeprimeprime*d1primeprimeprime))*exp(2*1j*pi*(d1primeprimeprime-d1ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(13,27)=(1/(d6primeprimeprime*d2primeprimeprime))*exp(2*1j*pi*(d2primeprimeprime-d2ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(13,28)=(1/(d6primeprimeprime*d3primeprimeprime))*exp(2*1j*pi*(d3primeprimeprime-d3ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(13,29)=(1/(d6primeprimeprime*d4primeprimeprime))*exp(2*1j*pi*(d4primeprimeprime-d4ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(13,30)=(1/(d6primeprimeprime*d5primeprimeprime))*exp(2*1j*pi*(d5primeprimeprime-d5ref-d6primeprimeprime+d6ref)*frequency/3e8);
                      
                       e(14,1)=(1/(d1primeprimeprime*d2))*exp(2*1j*pi*(d2-d2ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(14,2)=(1/(d2primeprimeprime*d3))*exp(2*1j*pi*(d3-d3ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(14,3)=(1/(d3primeprimeprime*d4))*exp(2*1j*pi*(d4-d4ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(14,4)=(1/(d4primeprimeprime*d1))*exp(2*1j*pi*(d1-d1ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(14,5)=(1/(d2primeprimeprime*d4))*exp(2*1j*pi*(d4-d4ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(14,6)=(1/(d1primeprimeprime*d3))*exp(2*1j*pi*(d3-d3ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(14,7)=(1/(d2primeprimeprime*d1))*exp(2*1j*pi*(d1-d1ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(14,8)=(1/(d3primeprimeprime*d2))*exp(2*1j*pi*(d2-d2ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(14,9)=(1/(d4primeprimeprime*d3))*exp(2*1j*pi*(d3-d3ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(14,10)=(1/(d1primeprimeprime*d4))*exp(2*1j*pi*(d4-d4ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(14,11)=(1/(d4primeprimeprime*d2))*exp(2*1j*pi*(d2-d2ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(14,12)=(1/(d3primeprimeprime*d1))*exp(2*1j*pi*(d1-d1ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       
                       e(14,13)=(1/(d1primeprimeprime*d5))*exp(2*1j*pi*(d5-d5ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(14,14)=(1/(d2primeprimeprime*d5))*exp(2*1j*pi*(d5-d5ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(14,15)=(1/(d3primeprimeprime*d5))*exp(2*1j*pi*(d5-d5ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(14,16)=(1/(d4primeprimeprime*d5))*exp(2*1j*pi*(d5-d5ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(14,17)=(1/(d5primeprimeprime*d1))*exp(2*1j*pi*(d1-d1ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(14,18)=(1/(d5primeprimeprime*d2))*exp(2*1j*pi*(d2-d2ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(14,19)=(1/(d5primeprimeprime*d3))*exp(2*1j*pi*(d3-d3ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(14,20)=(1/(d5primeprimeprime*d4))*exp(2*1j*pi*(d4-d4ref-d5primeprimeprime+d5ref)*frequency/3e8);

                       e(14,21)=(1/(d1primeprimeprime*d6))*exp(2*1j*pi*(d6-d6ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(14,22)=(1/(d2primeprimeprime*d6))*exp(2*1j*pi*(d6-d6ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(14,23)=(1/(d3primeprimeprime*d6))*exp(2*1j*pi*(d6-d6ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(14,24)=(1/(d4primeprimeprime*d6))*exp(2*1j*pi*(d6-d6ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(14,25)=(1/(d5primeprimeprime*d6))*exp(2*1j*pi*(d6-d6ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(14,26)=(1/(d6primeprimeprime*d1))*exp(2*1j*pi*(d1-d1ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(14,27)=(1/(d6primeprimeprime*d2))*exp(2*1j*pi*(d2-d2ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(14,28)=(1/(d6primeprimeprime*d3))*exp(2*1j*pi*(d3-d3ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(14,29)=(1/(d6primeprimeprime*d4))*exp(2*1j*pi*(d4-d4ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(14,30)=(1/(d6primeprimeprime*d5))*exp(2*1j*pi*(d5-d5ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       
                       e(15,1)=(1/(d1primeprimeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(15,2)=(1/(d2primeprimeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(15,3)=(1/(d3primeprimeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(15,4)=(1/(d4primeprimeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(15,5)=(1/(d2primeprimeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(15,6)=(1/(d1primeprimeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(15,7)=(1/(d2primeprimeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(15,8)=(1/(d3primeprimeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(15,9)=(1/(d4primeprimeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(15,10)=(1/(d1primeprimeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(15,11)=(1/(d4primeprimeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(15,12)=(1/(d3primeprimeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       
                       e(15,13)=(1/(d1primeprimeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(15,14)=(1/(d2primeprimeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(15,15)=(1/(d3primeprimeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(15,16)=(1/(d4primeprimeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(15,17)=(1/(d5primeprimeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(15,18)=(1/(d5primeprimeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(15,19)=(1/(d5primeprimeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(15,20)=(1/(d5primeprimeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d5primeprimeprime+d5ref)*frequency/3e8);

                       e(15,21)=(1/(d1primeprimeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(15,22)=(1/(d2primeprimeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(15,23)=(1/(d3primeprimeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(15,24)=(1/(d4primeprimeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(15,25)=(1/(d5primeprimeprime*d6prime))*exp(2*1j*pi*(d6prime-d6ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(15,26)=(1/(d6primeprimeprime*d1prime))*exp(2*1j*pi*(d1prime-d1ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(15,27)=(1/(d6primeprimeprime*d2prime))*exp(2*1j*pi*(d2prime-d2ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(15,28)=(1/(d6primeprimeprime*d3prime))*exp(2*1j*pi*(d3prime-d3ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(15,29)=(1/(d6primeprimeprime*d4prime))*exp(2*1j*pi*(d4prime-d4ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(15,30)=(1/(d6primeprimeprime*d5prime))*exp(2*1j*pi*(d5prime-d5ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       
                       e(16,1)=(1/(d1primeprimeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(16,2)=(1/(d2primeprimeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(16,3)=(1/(d3primeprimeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(16,4)=(1/(d4primeprimeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(16,5)=(1/(d2primeprimeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(16,6)=(1/(d1primeprimeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(16,7)=(1/(d2primeprimeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(16,8)=(1/(d3primeprimeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(16,9)=(1/(d4primeprimeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(16,10)=(1/(d1primeprimeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(16,11)=(1/(d4primeprimeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(16,12)=(1/(d3primeprimeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       
                       e(16,13)=(1/(d1primeprimeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(16,14)=(1/(d2primeprimeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(16,15)=(1/(d3primeprimeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(16,16)=(1/(d4primeprimeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(16,17)=(1/(d5primeprimeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(16,18)=(1/(d5primeprimeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(16,19)=(1/(d5primeprimeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(16,20)=(1/(d5primeprimeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d5primeprimeprime+d5ref)*frequency/3e8);

                       e(16,21)=(1/(d1primeprimeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d1primeprimeprime+d1ref)*frequency/3e8);
                       e(16,22)=(1/(d2primeprimeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d2primeprimeprime+d2ref)*frequency/3e8);
                       e(16,23)=(1/(d3primeprimeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d3primeprimeprime+d3ref)*frequency/3e8);
                       e(16,24)=(1/(d4primeprimeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d4primeprimeprime+d4ref)*frequency/3e8);
                       e(16,25)=(1/(d5primeprimeprime*d6primeprime))*exp(2*1j*pi*(d6primeprime-d6ref-d5primeprimeprime+d5ref)*frequency/3e8);
                       e(16,26)=(1/(d6primeprimeprime*d1primeprime))*exp(2*1j*pi*(d1primeprime-d1ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(16,27)=(1/(d6primeprimeprime*d2primeprime))*exp(2*1j*pi*(d2primeprime-d2ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(16,28)=(1/(d6primeprimeprime*d3primeprime))*exp(2*1j*pi*(d3primeprime-d3ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(16,29)=(1/(d6primeprimeprime*d4primeprime))*exp(2*1j*pi*(d4primeprime-d4ref-d6primeprimeprime+d6ref)*frequency/3e8);
                       e(16,30)=(1/(d6primeprimeprime*d5primeprime))*exp(2*1j*pi*(d5primeprime-d5ref-d6primeprimeprime+d6ref)*frequency/3e8);
                      
chh12est=alpha*e;
end

