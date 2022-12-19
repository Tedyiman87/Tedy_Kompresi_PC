clear all; 
RGB=imread('images.png'); 
figure(1), imshow(RGB); 
format=420; 
YCbCr=rgb2ycbcr(RGB);
Y = YCbCr(:,:,1); 
if format == 444
    Cb = YCbCr(:,:,2);
    Cr = YCbCr(:,:,3);
elseif format == 422 
    Cb=YCbCr(:,1:2:end,2); 
    Cr=YCbCr(:,1:2:end,3);
elseif format == 411 
    Cb=YCbCr(:,1:4:end,2); 
    Cr=YCbCr(:,1:4:end,3);
elseif format == 420 
    Cb=YCbCr(1:2:end,1:2:end,2);
    Cr=YCbCr(1:2:end,1:2:end,3); 
end
figure(2), imshow(Y);
figure(3), imshow(Cb);
figure(4), imshow(Cr);