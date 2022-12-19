clear all; 
f=double(imread('Lena.bmp'));
c0=1/(2^0.5);
n=8;
for u = 1:n
    if u == 1 cu = c0;
     else cu=1; 
    end 
    for x = 1:n
        DCx(u,x)=((2/n)^0.5)*cu*cos(((2*(x-1)+ 1)*pi*(u-1))/(2*n)); 
    end 
end 
for y = 1: n 
    for v = 1:n
        if v == 1 cv = c0;
        else cv=1; 
        end 
        DCy(y,v)=((2/n) ^0.5)*cu*cos(( (2*(y-1)+ 1) *pi* (v-1) )/ (2*n) );
    end 
end 
F=(DCx*f(1:n,1:n,1))*DCy
for x = 1:n
    for u = 1:n
        if u== 1 cu = c0;
        else cu=1;
        end 
    iDCx(x,u)=((2/n) ^0.5)*cu*cos(( (2*(x-1)+ 1) *pi* (u-1) )/ (2*n) );
    end 
end

for v = 1:n
    if v== 1 cv = c0;
    else cv=1;
    end
    for y = 1:n
        iDCy(v,y)=( (2/n) ^0.5)*cv*cos(( (2*(y-1)+ 1) *pi* (v-1) )/ (2*n) ); 
    end 
end  
iDCT=round (iDCx* (F*iDCy) )
f(1:n,1:n,1)