clc;
clear all;
close all;
wp=0.2*pi;
ws=0.3*pi;
ap=7;
as=16;
lamda=sqrt(power(10,0.1*as)-1);
E=sqrt(power(10,0.1*ap)-1);
n=acosh(lamda/E)/acosh(ws/wp);
N=round(n);
for i=1:500
    cn(i)=2*(i*pi/100)*(i*pi/100)-1;
    H(i)=1/sqrt(1+((E*E)*(cn(i)*cn(i))*((i*pi)/100)/wp));
end
y=20*log10(H)
plot(y)
