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
for y = 1:n
    for v = 1:n 
        if v== 1 cv = c0; 
        else cv=1; 
        end 
        DCy(y,v)=( (2/n) ^0.5) *cv*cos( ((2* (y-1)+ 1) *pi* (v-1))/(2*n) );
    end 
end 
F=(DCx*f(1:n,1:n,1))*DCy
Q = [2 2 3 4 5 6 8 11
    2 2 2 4 5 7 9 11
    3 2 3 5 7 9 11 12 
    4 4 5 7 9 11 12 12 
    5 5 7 9 11 12 12 12
    6 7 9 11 12 12 12 12
    8 9 11 12 12 12 12 12
    11 11 12 12 12 12 12 12];
for i=1:8 
    for j=1:8
        Fq(i,j)=round(F(i,j)/Q(i,j));
    end
end

for i=1:8 
    for j=1:8
        Fdq(i,j) = Fq(i,j)*Q(i,j);
    end 
end
for x = 1:n
   for u = 1:n 
       if u == 1 cu = c0;
       else cu=1; 
       end 
       iDCx(x,u)=((2/n) ^0.5) *cu*cos (( (2* (x-1)+ 1) *pi* (u-1))/(2*n) );
    end 
end 
for v = 1:n
    if v== 1  cv = c0;
    else cu=1;
    end 
    for y = 1:n 
        iDCy(v,y)=((2/n) ^0.5) *cv*cos (( (2*(y-1)+ 1) *pi* (v-1) )/ (2*n) );
    end
end
iDCT=round(iDCx*(Fdq*iDCy))
f(1:n,1:n,1)
    
