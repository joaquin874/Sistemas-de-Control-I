%Ejercicio Parcial Modelado
pkg load control
pkg load symbolic
clc; close all; clear all;

syms s real
syms E R I L W J Kb Theta B Ka Kce Ki N real 
eq1 = E == R*I+L*s*I+Kb*W
eq2 = J*s*W == Ka*I-((Kce*Theta)/N)-B*W
%eq3 = Tm == Ki*I
aux1 = solve(eq2, W)
eq1 = E == R*I+L*s*I+Kb*aux1
aux2 = solve(eq1, I)
G = Ki*simplify(aux2/E)