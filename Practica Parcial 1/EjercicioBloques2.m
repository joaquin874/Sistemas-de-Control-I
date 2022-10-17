%Ejercicio Parcial 
pkg load symbolic
clear all; close all; clc;

syms s Kd real

C = (s+5)/(s+10)
G = 10/(s^2+5*s)
A = simplify(C*G)

printf("Entrada R(s); Salida Y(s)\n");
FT1 = A/(1+A)

printf("Entrada N(s); Salida Y(s)\n");
M1 = Kd*C*G
l1 = -A
delta = 1-l1
M = simplify((M1+1)/delta)