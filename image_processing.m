clc;
clear all;
close all;
I=imread('img.tif');
imshow(I);title('Original Image');

%Negative Image
J=255-I;
%figure,imshow(J);title('Negative Image');

%Non linear Stretching: Log Transformation
Smax=255;
Smin=0;
Rmax=max(I(:));
Rmin=min(I(:));
S=((Smax-Smin)/(Rmax-Rmin))*(I-Rmin)+Smin;
%figure,imshow(S);title('Non linear Stretching: Log Transformation');

%Non linear Stretching: Power-Law Transformation
gama=-0.5;
T=(double(I)).^gama;
figure,imshow(T,[]);title('Non linear Stretching: Power-Law Transformation');
