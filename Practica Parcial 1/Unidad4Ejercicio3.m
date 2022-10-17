%Unidad 4 Ejercicio 3 
pkg load control
pkg load symbolic 
clear all; close all; clc;

syms s Kt K real

G1 = 100/(0.2*s+1)
FT1 = simplify(G1/(1+G1*Kt))
G2 = K*FT1*(1/(20*s))
FT2 = simplify(G2/(1+G2))