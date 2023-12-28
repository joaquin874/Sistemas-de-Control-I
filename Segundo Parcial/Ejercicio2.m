%Ejercicio2
pkg load control
clc; close all; clear all;

s = tf('s');
G = (43*s+3182)/(s^3+81*s^2+2108*s+17766)
%Parte 1
%Se cancela el polo que este mas cerca del origen, es decir p = -20.1
Ti = -1/max(pole(G))
PI = (s+(1/Ti))/s
FTla = minreal(PI*G)
rlocus(FTla)
%sgrid(psita, [30])
s1 = -10
%k = 1/|GH|             H = 1
invk = abs((43*s1+3182)/(s1^3+81*s1^2+2108*s1+17766));
kp = 1/invk
FTlc = minreal(feedback(FTla*kp, 1))
%step(FTlc, 3)

