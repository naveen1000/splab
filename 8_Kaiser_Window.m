%Aim of the experiment: Write a MATLAB program to plot
%the frequency response of low pass filter using Kaiser %window.
 
clc
clear all
close all

% Given specification
wp=0.2*pi;
ws=0.3*pi;
As=50;
%parameter calculation for Kaiser window
 delf=(ws-wp)/(2*pi);
 M=ceil(((As-7.95)/(14.36*delf))+1)+1;
 n = 0:1:(M-1);
 beta=0.1102*(As-8.7);
 wc=(ws+wp)/2;%cut-off frequency
 
 %Computation of Kaiser window function
 for n=0:M-1
    k=beta*sqrt(1-((1-((2*n)/(M-1)))^2));
    w(n+1)=besseli(0,k)/besseli(0,beta);
 end
subplot(2,2,1)
plot(w)
xlabel('n')
ylabel('wk(n)');
title('Kaiser window')
 
%Ideal Low-pass filter computation
alpha=(M-1)/2;
n=0:M-1;
m = n - alpha + 0.0001;
hd = sin(wc*m)./(pi*m);
subplot(2,2,2)
plot(hd);
xlabel('n')
ylabel('hd(n)')
title('impulse response of ideal low-pass filter')
 
%impulse response of linear-phase and causal FIR filter
%computed by truncate the impulse response of ideal filter
%by Kaiser window function
h=hd.*w;
subplot(2,2,3)
plot(h)
xlabel('n')
ylabel('h(n)')
title('impulse response of desired FIR low-pass filter')
%Magnitude response in frequency domain  (dB)
[Mag,Freq]=freqz(h);
Mag_db=20*log10(abs(Mag));
subplot(2,2,4)
plot(Freq,Mag_db)
xlabel('Frequency in rad')
ylabel('Magnitude(dB)')
title('Frequency reponse of desired FIR Low-pass filter')
