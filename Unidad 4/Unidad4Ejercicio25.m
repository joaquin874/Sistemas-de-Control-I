%Unidad 4 Ejercicio 25
pkg load control
clc; clear all; close all;

s = tf('s');
psita = 0.66
G = 1/(s^3+4*s^2+5*s)
rlocus(G)
sgrid(psita, [20,40,60])
s1 = -0.75+0.85i
k = 1/abs(1/(s1^3+4*s1^2+5*s1))
step(feedback(G*k,1))