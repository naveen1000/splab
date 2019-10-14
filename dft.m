%(a) program for finding DFT of a signal/sequence
clc
clear 
close all
f=100;
Ts=1/(20*f);
Fs=1/Ts;
t=0:Ts:1;
x=sin(2*pi*f*t);
L=length(x);
N=2^nextpow2(L);
x=[x zeros(1,(N-L))];
for k=0:N-1
    sum=0;
    for n=0:N-1
        A=x(n+1)*exp(-2i*pi*n*k/N);
        sum=sum+A;
    end
    X(k+1)=sum;
end
X
Xr=real(X);
Xi=imag(X);
%DFT using MATLAB function
Y=fft(x,N)
f=(Fs/2)*linspace(0,1,(N/2)+1);
plot(f,abs(X(1:(N/2)+1)))
figure
plot(f,abs(X(1:(N/2)+1)))
