%Unidad 4 Ejercicio 16
pkg load control
pkg load symbolic
clc; clear all; close all;
%syms s K real
s = tf('s');
G1 = 10/(s^2+10)
rlocus(G1)
G2 = (10*s+20)/(s^2+120*s+10)
rlocus(G2)
G3 = 45/(s^3+12*s^2+10*s+45)
rlocus(G3)
G4 = ((s+10)*(s+20))/((s+1)*(s+5))
rlocus(G4)
G5 = ((s+10)*(s+20))/((s-1)*(s+5))
rlocus(G5)
G6 = (1/(s+10))*(s/(s^2+s+1))
rlocus(G6)