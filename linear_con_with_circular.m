clear;
close all;
clc;
s1=input('enter 1st sequence');
s2=input('enter 2nd sequence');
l1=length(s1);
l2=length(s2);
l3=l1+l2-1;
%conv(s1',s2')
s1=[s1;zeros(l3-l1,1)];
s2=[s2;zeros(l3-l2,1)];
m=s1;
for i=1:l3-1
   m=[m circshift(s1,i)];
end    
m*s2
