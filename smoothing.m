clc
clear all
close all
I=imread('cameraman.tif');
J=double(I);
Mask=1/9*ones(3,3);
[r,c]=size(I);
J1=J;
for i=2:r-1
    for j=2:c-1
        A=J(i-1:i+1,j-1:j+1);
        A1=A.*Mask;
        A2=sum(A1(:));
        J1(i,j)=A2;
    end
end
subplot(1,2,1)
imshow(I)
subplot(1,2,2)
imshow(uint8(J1))
