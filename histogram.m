clc;
clear all;
close all;
I=imread('cameraman.tif')
imshow(I)
title('original image')
figure,imhist(I)
[count,G]=imhist(I);
N=[count G]
[r,c]=size(I)
n=r*c;
pr=count/n;
N1=[pr,G]
CDF(1)=pr(1);
for i=2:length(pr)
    CDF(i)=CDF(i-1)+pr(i);
end
s=round(255*CDF);
GS=[G s(:)]
I1=I;
for i=0:255
    f=find(I==i);
    if length(f)>0
        I1(f)=s(i);
    end
    end
    I2=uint8(I1);
    figure,imshow(I2)
    title('processed image')
    figure,imhist(I2)
    title('histogram of processed image')
