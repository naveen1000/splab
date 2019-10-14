clc;
clear all;
close all;
wp=0.2*pi;
ws=0.3*pi;
ap=7;
as=16;
lamda=sqrt(power(10,0.1*as)-1);
E=sqrt(power(10,0.1*ap)-1);
n=log10(lamda/E)/log10(ws/wp);
N=round(n);
for i=1:50
    f=(pi/100)*i;
    v1=power(f/wp,2*N)
    v2=(E*E*v1)+1
    H(i)=1/sqrt(v2);
end
%y=20*log10(H)
plot(H)
