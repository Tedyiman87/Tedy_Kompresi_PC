clear all; 
datain='TOBEORNOTTOBEORTOBEORNOT';
j=1; 
dictnew(1)={''};
W=datain(1);
i=1; 
lda=length(datain); 
for ii=1:lda-1 
    C=datain(i+1);
    Wc=[W,C];
    if strcmp(dictnew,Wc)==0;
        dictnew(j)={Wc};
        dout(j)={W};
        j=j+1;
       W=C;
    else
        W=Wc;
    end 
  i=i+1;
end
C=datain(i); 

WC=[W,C]; 
if strcmp(dictnew,Wc)==0;
    dictnew(j)={Wc}; 
    dout(j)={W};
end 
dout
[tf, index] = ismember(dout,dictnew); 
for i=1:length(index)
    if index(i) == 0 
        Dout(i)= double(char(dout(i)));
    else
        Dout (i) = 255+index (i) ;
    end
end

Dout
Nb=ceil(log2(max(Dout))) 
bitstream=[]; 
for i=1:length(index)
    bitstream=[bitstream dec2bin(Dout(i), Nb)];
end 
bitstream 
