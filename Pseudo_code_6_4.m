clear all;
Im=imread('images.png');
n=3;
B=2^n;
[Mf,Nf,L]=size(Im);
mb=mod(Mf,B);
nb=mod(Nf,B );
if nb>0
Im(:,Nf+1:Nf+(B-nb),:)= 0;
end 
if mb>0
Im(Mf+1:Mf+(B-mb),:,:)= 0;
end 
imshow(Im);
mb=Mf/8;
nb=Nf/8;
for l=1:L
    for i=1:mb 
        for j=1:nb
            m1=B*(i-1)+1; m2=B*i; 
            n1=8*(j-1)+1; n2=B*j;
            BlokBxB=Im(m1:m2, n1:n2, 1); 
        end 
    end 
end 