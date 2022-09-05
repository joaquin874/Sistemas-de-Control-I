%Unidad 3 Ejercicio 10
pkg load symbolic
clc; clear all; close all;

syms M Theta C G V I R L Kb Thetam Tm Ka B J real
syms a s w t real 

%Entrada V - Salida Theta
%Planteo la ecuaciones que modelan el sistema 
eq1 = V == R*I+L*s*I+Kb*s*Thetam
eq2 = J*s^2*Thetam == Ka*I-B*s*Thetam
%Despejo Thetam de la segunda ecuacion
aux1 = solve(eq2, Thetam);
%Remplazo Thetam en la primera ecuacion
eq3 = V == R*I+L*s*I+Kb*s*aux1;
%Despejo la corriente I y la remplazo en la tercera ecuacion
aux2 = solve(eq3, I);
Tm = Ka*aux2;
eq4 = Tm == M*s^2*Theta+C*s*Theta+G*Theta
%Despejo Theta y divido por V para eliminarla y quedarme 
%con la funcion de tranferencia Theta/V
FT = simplify(solve(eq4, Theta)/V)





