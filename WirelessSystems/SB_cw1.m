% cwiczenie 1 
clc;
clear all;
close all;

r = randi([0,3],10000,1);
qpskModulator = comm.QPSKModulator('PhaseOffset',pi/2);
ys = qpskModulator(r);

awgnchan = comm.AWGNChannel('NoiseMethod','Signal to noise ratio (SNR)','SNR', 7) ;
L = length(ys);

y1=0;
y2=0;
y3=0;
y4=0;

y = awgnchan(ys);

for ii = 1:L  
if real(ys(ii))>0 & imag(ys(ii))>0
    y1 = [y1;awgnchan(ys(ii))];
end
if real(ys(ii))>0 & imag(ys(ii))<0
    y2 = [y2;awgnchan(ys(ii))];
end
if real(ys(ii))<0 & imag(ys(ii))>0
    y3 = [y3;awgnchan(ys(ii))];
end
if real(ys(ii))<0 & imag(ys(ii))<0
    y4 = [y4;awgnchan(ys(ii))];
end
end


figure(1);    
plot(y1,'r.')
hold on;
plot(y2,'y.')
hold on;
plot(y3,'g.')
hold on;
plot(y4,'b.')
hold on;
hold off;

outsignal = y; 

qpskdem = comm.QPSKDemodulator('PhaseOffset',pi/2);
demodulated = qpskdem(outsignal);


[number2,snr] = biterr(r,demodulated(1:10000));
[number1,ser] = symerr(r,demodulated(1:10000));

snr
ser

%--------------------------------------------------------------------------

