%Unidad 4 Ejercicio 9
pkg load control
pkg load symbolic 
clc; clear all; close all;

%Sistema 1

s = tf('s');
ymax = 1.3
K = 1
Mp = (ymax-K)/K
ts = 0.1
Zita = sqrt(log(Mp)^2/(pi^2+log(Mp)^2))
Wn = pi/(2*ts)
G = ((K*Wn^2)/(s^2+2*Wn*Zita*s+Wn^2))
step(G)

%Sistema 7

K = 1.2
Tao = 1.1
G = K/(Tao*s+1)
step(G)