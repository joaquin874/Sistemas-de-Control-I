%Unidad 4 Ejercicio 8
pkg load control
pkg load symbolic 
clc; clear all; close all;

s = tf('s');
ymax = 2.4
K = 2
Mp = (ymax-K)/K
ts = 1*10^-3
Zita = sqrt(log(Mp)^2/(pi^2+log(Mp)^2))
Wn = pi/(2*ts)
G = ((K*Wn^2)/(s^2+2*Wn*Zita*s+Wn^2))
step(G)