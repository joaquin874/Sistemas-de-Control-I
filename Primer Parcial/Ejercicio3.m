%Ejercicio 3
pkg load symbolic
pkg load control
clc; clear all; close all;

syms s Y X U real
A = 79
B = 2
C = 54
D = 9 
E = 12
F = 14

eq1 = U-C*Y == A*X+F*s*X
eq2 = E*s*Y-D*X+B*Y == 0

aux = solve(eq2, X)

eq1 = U-C*Y == A*aux+F*s*aux

FT = solve(eq1, Y)/U

coef = [168 976 644]
p = roots(coef)
G = tf([9],[168 976 644])
dcgain(G)