clear all
close all
clc;

room_w = 20;
room_h= 12;

P = 10 * log10(1)

lambda = 300/2400;

xT = 50.5;
yT = 65.5;

xTdwa = 50.5;
yTdwa = -65.5;

xTtrzy = 50.5;
yTtrzy = 65.5+120-65.5+120-65.5;

for x = 1:1:room_w*10
    for y = 1:1:room_h*10
        H(x,y) = lambda*exp(-1i*2*pi*distance(x,y,xT,yT)/lambda)/(4*pi*distance(x,y,xT,yT))+lambda*exp(-1i*2*pi*distance(x,y,xTdwa,yTdwa)/lambda)/(4*pi*distance(x,y,xTdwa,yTdwa))+lambda*exp(-1i*2*pi*distance(x,y,xTtrzy,yTtrzy)/lambda)/(4*pi*distance(x,y,xTtrzy,yTtrzy));
        if(dwawektory(x,y,xT,yT,130.5,-100,130.5,50)==1 || dwawektory(x,y,xT,yT,130.5,70,130.5,1200)==1)
            if(dwawektory(x,y,xTdwa,yTdwa,130.5,-100,130.5,50)==1 || dwawektory(x,y,xTdwa,yTdwa,130.5,70,130.5,1200)==1)
                 if(dwawektory(x,y,xTtrzy,yTtrzy,130.5,-100,130.5,50)==1 || dwawektory(x,y,xTtrzy,yTtrzy,130.5,70,130.5,1200)==1)
                    moc(x,y)=P+10*log10(abs(H(x,y))^2)-9;
                 else
                    moc(x,y)=P+10*log10(abs(H(x,y))^2); 
                 end
            else
                moc(x,y)=P+10*log10(abs(H(x,y))^2);
            end
        
        else
           moc(x,y)=P+10*log10(abs(H(x,y))^2);
        end
        
        
        
    end
end    

pcolor(moc);
hold on;
line([130.5,130.5],[0,50])
hold on;
line([0,50],[130.5,130.5])
hold on;
line([70,120],[130.5,130.5])
shading('interp');
colorbar;

% Funkcja dwawektory(ax,ay,bx,by,cx,cy,dx,dy) sprawdza, czy wektory sie przecinaja.
% (ax,ay) i (bx,by) to wspolrzedne poczatku i konca pierwszego wektora,
% a (cx,cy) i (dx,dy) to odpowiednio wspolrzedne poczatku i konca drugiego z wektorow.
% Funkcja zwraca:
%         1 jezeli wektory sie przecinaja (krzyzuja),
%         0 jezeli stykaja sie w jednym punkcie lub czesciowo pokrywaja,
%        -1 jezeli sa rozlaczne.