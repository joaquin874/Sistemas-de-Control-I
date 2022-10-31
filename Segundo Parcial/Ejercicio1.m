%Ejercicio1
pkg load control
clc; close all; clear all;

s = tf('s');

G = 1/((s+35)*(s+3))
%Una respuesta criticamente amortiguada corresponde a un psita = 1
%Esto quiere decir que tendre 2 polos reales e iguales
rlocus(G)
s1 = -19
invk = abs(1/((s1+35)*(s1+3)));
k = 1/invk
FTlc = feedback(G*k, 1)
step(FTlc,0.5)
