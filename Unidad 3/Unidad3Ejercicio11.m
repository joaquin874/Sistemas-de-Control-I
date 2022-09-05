%Unidad 3 Ejercicio 11 
pkg load symbolic
pkg load control
clc; close all; clear all;

syms s a t w real
syms C1 L1 L2 R1 R2 I1 I2 E real
Xc1 = 1/(s*C1);
Xl1 = s*L1;
Xl2 = s*L2;
%Planteo las ecuaciones, 1 por cada malla
Malla1 = E == I1*(R1+Xl1+Xc1)-I2*(Xc1)
Malla2 = 0 == -I1*(Xc1)+I2*(Xc1+Xl2+R2)
%Despejo I1 de la ecuacion 1 y reemplazo en la Malla2  
aux1 = solve(Malla1, I1);
Malla2 = 0 == -aux1*(Xc1)+I2*(Xc1+Xl2+R2);
%Encuentro el valor de I2 y obtengo la FT
I2 = solve(Malla2, I2)
ER2 = R2*I2
FT = ER2/E

s = tf('s');
R1 = 100;
R2 = 250;
C1 = 1*10^-6;
L1 = 100*10^-3;
L2 = 100*10^-3;
FT = R2/(C1*L1*s^3+C1*L1*R2*s^2+C1*R1*R2*s+L1*s+L2*s+R1+R2)