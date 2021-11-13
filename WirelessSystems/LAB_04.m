clear all;
close all;
clc;

v = 108 * 10/36;

lambda = 300/3000;

xleft=-20;
yleft=30;

xright=120;
yright=170;


for k = 1:1:490*100/v
    
   if(dwawektory(90,100,200,100,70,10+v*k/100,120,30)==1)
       H(k) = 0;
   else
       H(k) = lambda * exp(-1i*2*pi*dist(70,10+v*k/100,120,30)/lambda)/(4*pi*dist(70,10+v*k/100,120,30));
   end
   
   if(dwawektory(50,10,50,500,70,10+v*k/100,xleft,yleft)==1)
       Hl(k) = lambda * exp(-1i*2*pi*dist(70,10+v*k/100,xleft,yleft)/lambda)/(4*pi*dist(70,10+v*k/100,xleft,yleft));
   else
       Hl(k) = 0;
   end
   
   if(dwawektory(90,100,200,100,70,10+v*k/100,xright,yright)==1)
       Hr(k) = lambda * exp(-1i*2*pi*dist(70,10+v*k/100,xright,yright)/lambda)/(4*pi*dist(70,10+v*k/100,xright,yright));
   else
       Hr(k) = 0;
   end
   
   Power(k) = 10*log10(10) + 20*log10(abs(H(k)+Hl(k)+Hr(k)));
    
end

plot(Power)
xlabel('Czas')
ylabel('Moc')


