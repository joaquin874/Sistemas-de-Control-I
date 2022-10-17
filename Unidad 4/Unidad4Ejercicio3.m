%Unidad 4 Ejercicio 3
pkg load symbolic
pkg load control
clear all; close all; clc;

syms s Kt K real

G1 = 100/(0.2*s+1);
G1LC = factor(G1/(1+G1*Kt),'s');
G2 = 1/(20*s);
G = factor(K*G1LC*G2, s, 's')
Kt = 0;
K = 0;
Ga = eval(G)
s = 0;
esspa = 1/(1+eval(Ga))
syms s real
Kt = 5;
K = 5;
Gb = eval(G)
s = 0;
esspb = 1/(1+eval(Gb))
syms s real
Kt = 50;
K = 50;
Gc = eval(G)
s = 0;
esspc = 1/(1+eval(Gc))
