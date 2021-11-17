function varf = myfun(tx,rc,xstart,ystart);

skrz=0;
nskrz=0;


varf(1)=1;
varf(2)=1;
varf(3)=1;
varf(4)=1;
varf(5)=1;
varf(6)=1;
varf(7)=1;
varf(8)=1;
varf(9)=1;
varf(10)=1;
varf(11)=1;
varf(12)=1;



if(wektorsektor(tx(1,1),tx(2,1),rc(1,1),rc(2,1),xstart,ystart,0.5,0.5)==1)
    varf(1)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,2),tx(2,2),rc(1,1),rc(2,1),xstart,ystart,0.5,0.5)==1)
    varf(2)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,3),tx(2,3),rc(1,1),rc(2,1),xstart,ystart,0.5,0.5)==1)
    varf(3)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,1),tx(2,1),rc(1,2),rc(2,2),xstart,ystart,0.5,0.5)==1)
    varf(4)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,2),tx(2,2),rc(1,2),rc(2,2),xstart,ystart,0.5,0.5)==1)
    varf(5)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,3),tx(2,3),rc(1,2),rc(2,2),xstart,ystart,0.5,0.5)==1)
    varf(6)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,1),tx(2,1),rc(1,3),rc(2,3),xstart,ystart,0.5,0.5)==1)
    varf(7)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,2),tx(2,2),rc(1,3),rc(2,3),xstart,ystart,0.5,0.5)==1)
    varf(8)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,3),tx(2,3),rc(1,3),rc(2,3),xstart,ystart,0.5,0.5)==1)
    varf(9)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,1),tx(2,1),rc(1,4),rc(2,4),xstart,ystart,0.5,0.5)==1)
    varf(10)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,2),tx(2,2),rc(1,4),rc(2,4),xstart,ystart,0.5,0.5)==1)
    varf(11)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end

if(wektorsektor(tx(1,3),tx(2,3),rc(1,4),rc(2,4),xstart,ystart,0.5,0.5)==1)
    varf(12)=0;
    skrz=skrz+1;
else
    nskrz=nskrz+1;
end


end