clear;
close all;
clc;
%a=[1;2;3;4];
s1=input('enter 1st sequence')
s1=s1';
%b=[1 1 1 0];
s2=input('enter 2nd sequence')
l1=length(s1);
l2=length(s2);
N=max(l1,l2);
s2=[s2 zeros(1,l1-l2)]
m=s1;
for i=1:N-1
    m=[m circshift(s1,i)];
end    

m*s2'
