%Unidad 2 Ejercicio 4
pkg load control
pkg load symbolic

clc; clear all; close all;

s = tf('s');
L = 1*10^-6;
R = 2;
ka = 0.042;
J = 10*10^-6;
B = 0.30*10^-5;
kb = 0.042;
ls = 1/(L*s+R);
Ws = 1/(J*s+B);
kp = 1;

G1 = minreal(ls*ka*Ws)
G2 = feedback(G1, kb)
G3 = feedback(G2*kp, 1)

p = 0.00005;
t = 0: p: 0.005-p;
u = 300*ones(size(t));
lsim(G3, u, t);
