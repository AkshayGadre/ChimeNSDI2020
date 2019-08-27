function loc1 = chirpDetect(data,start,ender)
     %winsize is defined as 1/256th of the chirp size
   BW = 1.25e5;
SF = 10;
chirp_size=4608;
preamble_length=20;
extra_sampling_factor = 1; % table  Sample/KHz       extra_sampling_factor
%         125                1
%         250                2
%         500                3
Fs = BW;
symbol_length=chirp_size;
symbol_length_upsampled = extra_sampling_factor*chirp_size;
freq_shift_per_sample =  Fs/symbol_length; % How each frequency bin maps to a difference in frequency
Ts = 1/freq_shift_per_sample; % Symbol Duration
f = linspace(-BW/2,BW/2-freq_shift_per_sample,symbol_length); % The X-Axis
% of the FFT plot
reset_freq = -BW/2; % The initial frequency of the base chirp
final_freq = (BW/2);%-freq_shift_per_sample; % The final frequency
[up,down] = my_create_chirpspecial(extra_sampling_factor*Fs,Ts,reset_freq,final_freq,chirp_size);

comparator=[repmat(down,18,1);repmat(up,2,1)];
MASTER=zeros(round(ender-start+1/100),1);
for i=start:100:ender
    MASTER(round((i-start)/100)+1)=max(abs(fft(data(i+1:i+92160).*comparator)));
end
[~,loc]=max(MASTER);
 loc1=loc*100+start-1;

end