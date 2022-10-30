pkg load control
clc; close all; clear all;

s = tf('s');
G = (66*s+3432)/(s^3+47*s^2+584*s+988)
PI = (s+2)/s
FTla = minreal(G*PI)
s1 = -8
invk = (66*s1+3432)/(s1*(s1+26)*(s1+19))
k = 1/abs(invk)
FTlc = feedback(FTla, 1)
FTlck = feedback(FTla*k, 1)
step(FTlc, FTlck)
%figure 
%hold on
%for k = 0:1:100
%  FTlc = feedback(k*G)
%  pzmap(FTlc)
%end
