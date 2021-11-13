clear all;
clc;
close all;

symbols=4;
i=1;

data = [-130,-130,-130,-130,-130,-130,-130,-130,-145,-145,-145,-145,-145,-145,-145,-145,-138,-138,-138,-138,-138,-138,-138,-138,-148,-148,-148,-148,-148,-148,-148,-148];

while(i<=30 && symbols>0)

dane = randi([0 symbols-1],1,1000000);

modulator = comm.PSKModulator(symbols,0);

sygnal_mod = step(modulator,dane');

PL = data(i);

SNR = 0 + PL + 152;

speed(i) = log2(symbols)*5000000;

kanal_AWGN = comm.AWGNChannel('NoiseMethod','Signal to Noise Ratio (SNR)','SNR',SNR);

sygnal_odb = step(kanal_AWGN,sygnal_mod);

demodulator = comm.PSKDemodulator(symbols,0);

sygnal_zdem = step(demodulator,sygnal_odb);

[nuem,BER] = biterr(dane',sygnal_zdem);
[num,SER] = symerr(dane',sygnal_zdem);

berek(i)=BER;

if(i>3)
    if(berek(i-3)>0.001)
       if(symbols==32)
           symbols=16;
       elseif(symbols==16)
           symbols=8;
       elseif(symbols==8)
           symbols=4;
       elseif(symbols==4)
           symbols=2;
       end
% %        Jesli odkomentowane nadajnik bedzie probowal przejsc do wyzszej
% modulacji 
%     elseif(berek(i-3)<0.000001)
%         if(symbols==16)
%            symbols=32;
%        elseif(symbols==8)
%            symbols=16;
%        elseif(symbols==4)
%            symbols=8;
%        elseif(symbols==2)
%            symbols=4;
%        end
        
    end
end

disp(symbols)

i = i + 1;
end

figure(1);
plot(speed);
title('SPEED','[bit/s]');
xlabel("time [ms]")

figure(2);
plot(berek);
title('BER');
xlabel("time [ms]")


