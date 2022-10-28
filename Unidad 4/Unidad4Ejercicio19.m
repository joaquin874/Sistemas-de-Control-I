%Unidad 4 Ejercicio 19
pkg load control
clc; clear all; close all;

s = tf('s');
psita = sqrt((log(0.04)^2)/(pi^2+log(0.04)^2))
G = (100*(s+40))/((s+1)*(s+5))
%H = 1
H = 1/(s+20) 
rlocus(G)
sgrid(0.707, [20])

s1 = -37.8+36.8i
k1 = 1/abs((100*(s1+40))/((s1+1)*(s1+5)))

s2 = -2.8+2.7i
k2 = 1/abs(((100*(s2+40))/((s2+1)*(s2+5)))*1/(s2+20))

%step(feedback(G,1),feedback(G,H))
%step(feedback(k1*G,1),feedback(k2*G,H))