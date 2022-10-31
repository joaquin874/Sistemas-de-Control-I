%Ejercicio2
pkg load control
clc; close all; clear all;

s = tf('s');
G = (43*s+3192)/(s^3+81*s^2+2108*s+17766)
pole(G)
%Parte 1
%Se cancela el polo que este mas cerca del origen, es decir p = -20.1
PI = (s+20.091)/s
FTla = minreal(G*PI)
%rlocus(FTla)
%sgrid(psita, [30])
s1 = -10.4
ti = abs(1/s1)
invk = abs((43*s1+3192)/(s1*(s1+23.882)*(s1+37.027)));
kp = 1/invk
FTlc = minreal(feedback(FTla*kp, 1))
%step(FTlc, 3)

%Parte 2
PI = (s+20.091)/s
psita = 0.707
%rlocus(FTla)
%sgrid(psita, [20])
s2 = -9.63+9.64i
ti2 = abs(1/s2)
invk2 = abs((43*s2+3192)/(s2*(s2+23.882)*(s2+37.027)));
kp2 = 1/invk2
FTlc2 = minreal(feedback(FTla*kp2, 1))
step(FTlc2)