Dinput ='this is an example of a huffman tree';
L=length(Dinput);
DinputNum(1:L)=0; 

Hist(1:256)=0;
for i=1:L;
    DinputNum(i)=double(Dinput(i)); 
    Hist(DinputNum(i))=Hist(DinputNum(i))+1;
end 
PHist=Hist/L;
[PHist, symbols]=sort(PHist,'descend'); 
eobi=max(FIND(PHist~=0));
PHist=PHist(1:eobi);
symbols=symbols(1:eobi);

dict = huffmandict(symbols,PHist); 
hcode = huffmanenco(DinputNum,dict);
 
dhsig = huffmandeco(hcode,dict); 
Drec = char(dhsig(:));