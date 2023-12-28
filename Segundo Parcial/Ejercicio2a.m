pkg load control
clc; clear all; close all;

s = tf('s');
G = (43*s+3182)/(s^3+81*s^2+2108*s+17766)
psita = sqrt((log(0.04)^2/(pi^2+log(0.04)^2)))
%Parte 2
Ti = -1/max(pole(G))
PI = (s+(1/Ti))/s
FTla = minreal(PI*G)
rlocusx(FTla)
sgrid(psita, [20])
%k = 1/|GH|        H = 1
s2 = -9.6+9.6i
invk2 = abs((43*s2+3182)/(s2^3+81*s2^2+2108*s2+17766));
kp2 = 1/invk2
FTlc2 = minreal(feedback(FTla*kp2, 1))
%step(FTlc2)
