clear all;
f=double(imread('Lena.bmp'));
Q=4.5;
c0=1/(2^0.5);
n=8;
for u = 1:n
    if u == 1  cu = c0;
    else cu=1;
    end
    for x = 1:n
        QDCx(u,x)=((2/(n*Q))^0.5)cu*cos(((2(x-1)+1)pi(u-1))/(2*n));
    end
end
QDCy= QDCx';
F = (QDCx*f(1:n,1:n,1))*QDCy
for x = 1:n
    for u = 1:n
        if u == 1 cu = c0;
        else cu=1;
        end
        iQDCx(x,u)=(( (2*Q)/n)^0.5)cu*cos(((2(x-1)+1)pi(u-1))/(2*n));
    end
end
iQDCy= iQDCx';
iQDCT=round(iQDCx*(F*iQDCy))
f(1:n,1:n,1)