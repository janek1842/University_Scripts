clear all;
clc;
close all;

symbols=32;
d(1)=1;
i=2;
speed(1) = log2(symbols)*5000000;

while(i<500 && symbols>0)

d(i)= d(i-1)+0.05;

dane = randi([0 symbols-1],1,1000000);

modulator = comm.PSKModulator(symbols,0);

sygnal_mod = step(modulator,dane');

PL = 40*(1-4*0.001*10)*log10(d(i)) - 18*log10(10)+21*log10(1900)+80;

SNR = 0 - PL + 152;

speed(i) = log2(symbols)*5000000;

kanal_AWGN = comm.AWGNChannel('NoiseMethod','Signal to Noise Ratio (SNR)','SNR',SNR);

sygnal_odb = step(kanal_AWGN,sygnal_mod);

demodulator = comm.PSKDemodulator(symbols,0);

sygnal_zdem = step(demodulator,sygnal_odb);

[nuem,BER] = biterr(dane',sygnal_zdem);
[num,SER] = symerr(dane',sygnal_zdem);


if(BER>0.001)
   if(symbols==32)
       symbols=16;
   elseif(symbols==16)
       symbols=8;
   elseif(symbols==8)
       symbols=4;
   elseif(symbols==4)
       symbols=2;
   elseif(symbols==2)
       symbols=0;
   end
end

i=i+1;
end

figure(1);
plot(d,speed);
title('SPEED');




