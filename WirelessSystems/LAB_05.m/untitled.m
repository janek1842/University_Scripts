clear all;
close all;
clc;

tx1x=5.5;
tx1y=2.5;

tx2x=5.5;
tx2y=10;

tx3x=5.5;
tx3y=17;

rc1x=25;
rc1y=5.5;

rc2x=25;
rc2y=8.5;

rc3x=25;
rc3y=12.5;

rc4x=25;
rc4y=15.5;

tx(1,:) = [tx1x,tx2x,tx3x];
tx(2,:) = [tx1y,tx2y,tx3y];

rc(1,:) = [rc1x,rc2x,rc3x,rc4x];
rc(2,:) = [rc1y,rc2y,rc3y,rc4y];

xstart = 16.5;
ystart = 9;

var(1)='b';
var(2)='b';
var(3)='b';
var(4)='b';
var(5)='b';
var(6)='b';
var(7)='b';
var(8)='b';
var(9)='b';
var(10)='b';
var(11)='b';
var(12)='b';

nr_skrz=0;
nr_nskrz=0;

if(wektorsektor(tx(1,1),tx(2,1),rc(1,1),rc(2,1),xstart,ystart,0.5,0.5)==1)
    var(1)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,2),tx(2,2),rc(1,1),rc(2,1),xstart,ystart,0.5,0.5)==1)
    var(2)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,3),tx(2,3),rc(1,1),rc(2,1),xstart,ystart,0.5,0.5)==1)
    var(3)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,1),tx(2,1),rc(1,2),rc(2,2),xstart,ystart,0.5,0.5)==1)
    var(4)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,2),tx(2,2),rc(1,2),rc(2,2),xstart,ystart,0.5,0.5)==1)
    var(5)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,3),tx(2,3),rc(1,2),rc(2,2),xstart,ystart,0.5,0.5)==1)
    var(6)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,1),tx(2,1),rc(1,3),rc(2,3),xstart,ystart,0.5,0.5)==1)
    var(7)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,2),tx(2,2),rc(1,3),rc(2,3),xstart,ystart,0.5,0.5)==1)
    var(8)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,3),tx(2,3),rc(1,3),rc(2,3),xstart,ystart,0.5,0.5)==1)
    var(9)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,1),tx(2,1),rc(1,4),rc(2,4),xstart,ystart,0.5,0.5)==1)
    var(10)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,2),tx(2,2),rc(1,4),rc(2,4),xstart,ystart,0.5,0.5)==1)
    var(11)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end

if(wektorsektor(tx(1,3),tx(2,3),rc(1,4),rc(2,4),xstart,ystart,0.5,0.5)==1)
    var(12)='r';
    nr_skrz=nr_skrz+1;
else
    nr_nskrz=nr_nskrz+1;
end





% figure(1);
% axis([0 30 0 20])
% 
% for xx= 5:5:300
%     for yy = 5:5:200
%         
%         [varf] = myfun(tx,rc,xx/10,yy/10);
%         
%         j=1;
%         
%         while(j<13)
%             if(varf(j)==0)
%                varf(j)='r'; 
%             else
%                 varf(j)='b';
%             end
%             j=j+1;
%         end
%         
%        
%         
%         j=1; 
%         while(j<13)      
%             if(varf==var)
%                 rectangle('Position',[xx/10 yy/10 0.5 0.5 ])
%                
%             end
%                   
%            j=j+1;
%         end
%        
%             
%     end
% end




disp(nr_skrz)
disp(nr_nskrz)


figure(2);
title('Plan pomieszczenia');
rectangle('Position',[0 0 30 20])
hold on;
rectangle('Position',[xstart ystart 0.5 0.5 ])
hold on;
plot(tx1x,tx1y,'r*')
hold on;
plot(tx2x,tx2y,'r*')
hold on;
plot(tx3x,tx3y,'r*')
hold on;
plot(rc1x,rc1y,'go')
hold on;
plot(rc2x,rc2y,'go')
hold on;
plot(rc3x,rc3y,'go')
hold on;
plot(rc4x,rc4y,'go')
hold on;
plot([tx(1,1),rc(1,1)],[tx(2,1),rc(2,1)] ,var(1))
hold on;
plot([tx(1,2),rc(1,1)],[tx(2,2),rc(2,1)],var(2) )
hold on;
plot([tx(1,3),rc(1,1)],[tx(2,3),rc(2,1)],var(3))
hold on;
plot([tx(1,1),rc(1,2)],[tx(2,1),rc(2,2)] ,var(4))
hold on;
plot([tx(1,2),rc(1,2)],[tx(2,2),rc(2,2)],var(5) )
hold on;
plot([tx(1,3),rc(1,2)],[tx(2,3),rc(2,2)],var(6) )
hold on;
plot([tx(1,1),rc(1,3)],[tx(2,1),rc(2,3)] ,var(7))
hold on;
plot([tx(1,2),rc(1,3)],[tx(2,2),rc(2,3)],var(8) )
hold on;
plot([tx(1,3),rc(1,3)],[tx(2,3),rc(2,3)],var(9) )
hold on;
plot([tx(1,1),rc(1,4)],[tx(2,1),rc(2,4)] ,var(10))
hold on;
plot([tx(1,2),rc(1,4)],[tx(2,2),rc(2,4)],var(11) )
hold on;
plot([tx(1,3),rc(1,4)],[tx(2,3),rc(2,4)],var(12) )
































