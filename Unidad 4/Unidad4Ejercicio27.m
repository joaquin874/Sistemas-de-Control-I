%Unidad 4 Ejercicio 27
pkg load control 
clc; close all; clear all; 

s = tf('s');
psita = sqrt((log(0.04)^2)/(pi^2+log(0.04)^2))

G1 = 10/((s+10)*(s+100))
G2 = 0.8/((0.1*s+1)*(0.05*s+1))
G3 = 125/(s^2+33*s+200)
G4 = 1.24/(s+1)^3
G5 = (20*(s+60))/((s+10)*(s+20))
G6 = (800*s+320000)/(s^3+300*s^2+29000*s+600000)
PI1 = (s+10)/s
PI2 = (s+10)/s
PI3 = (s+8)/s
PI4 = (s+1)/s
PI5 = (s+10)/s
PI6 = (s+20.086)/s
FTla1 = minreal(G1*PI1)
FTla2 = minreal(G2*PI2)
FTla3 = minreal(G3*PI3)
FTla4 = minreal(G4*PI4)
FTla5 = minreal(G5*PI5)
FTla6 = minreal(G6*PI6)

s1 = -50+48.7i
s2 = -10+9.75i
s3 = -12.5+12.2i
s4 = -0.3+0.3i
s5a = -12.5+12.2i  
s5b = -48.8+47.8i   %al estar mas alejado del eje imaginario es mas rapida la respuesta
s6 = -60 +58.8i

k1 = 1/abs(10/(s1*(s1+100)))
k2 = 1/abs(160/(s2*(s2+20)))
k3 = 1/abs(125/(s3*(s3+25)))
k4 =  1/abs(1.24/(s4^3+2*s4^2+1*s4))
k5a = 1/abs((20*s5a+1200)/(s5a*(s5a+20)))
k5b = 1/abs((20*s5b+1200)/(s5b*(s5b+20)))
invk6 = abs((800*s6+320000)/(s6^3+300*s6^2+29000*s6+600000)*(s6+20.086)/s6);
k6 = 1/invk6

step(feedback(k5a*FTla5),feedback(k5b*FTla5))
