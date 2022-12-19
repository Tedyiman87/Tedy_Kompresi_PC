function [LL1, HL1, LH1, HH1] = dwthaar(Im)

[N,M]=size(Im);
for n=1:N
    k=1;
    for m=1:2:M-1
        L1(n,k)=Im(n,m)+Im(n,m+1);
        H1(n,k)=Im(n,m)-Im(n,m+1);
        k=k+1;
    end
end
[N,M]=size(L1);
for m=1:M
    k=k;
    for n=1:2:N-1
        LL1(k,m)=L1(n,m)+L1(n,m+1);
        HL1(k,m)=L1(n,m)-L1(n,m+1);
        
        LL1(k,m)=H1(n,m)+H1(n,m+1);
        HL1(k,m)=H1(n,m)-H1(n,m+1); 
        k=k+1;
    end
end