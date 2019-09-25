clc
clear all
close all
I=imread('bones.tif');
[r,c]=size(I);
J=double(I);
Gx=[-1 -1 -1;0 0 0;1 1 1];
Gy=[-1 0 1;-1 0 1;-1 0 1];
E=zeros(r,c);
for i=2:r-1
    for j=2:c-1
        A=J(i-1:i+1,j-1:j+1);
        Agx=A.*Gx;
        Agy=A.*Gy;
        Agx1=sum(Agx(:));
        Agy1=sum(Agy(:));
        E(i,j)=abs(Agx1)+abs(Agy1);
    end
end
subplot(1,2,1)
imshow(I);
subplot(1,2,2)
imshow(uint8(E))
