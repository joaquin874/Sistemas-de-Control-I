%Unidad 2 Ejercicio 3
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

%3.1

G1 = minreal(ls*ka*Ws)
G2 = feedback(G1, kb)

%3.2

p = 0.001;
t = 0: p: 0.1-p;
u = 24*ones(size(t));
lsim(G2, u, t);

disp('Terminado');

