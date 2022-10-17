%Unidad 4 Ejercicio 1
pkg load symbolic
clear all; close all; clc

syms s K real

%Funciones de transferencia
G1 = 50/((1+0.5*s)*(1+2*s))
G2 = 2/(s*(1+0.1*s)*(1+0.5*s))
G3 = 1/(s*(s^2+4*s+200))
G4 = (30*(1+2*s)*(1+4*s))/(s*(s^2+2*s+10))
G5 = (10*(s+1))/(s*(1+0.1*s)*(1+0.5*s))
G6 = K/(s*(s+4)*(s^2+6*s+1))
G7 = (10*(s+1))/(s^2*(s+5)*(s+6))
G8 = (10*(s+1))/(s^3*(s^2+5*s+5))
G9 = (10*e^(-0.2*s))/((1+s)*(1+10*s)*(1+20*s))
G10 = (100*(s+1))/(s^2*(s+5)*(s+6)^2)
G11 = 1000/(s*(s+10)*(s+100))
G12 = (3*s)/(s^2*(s+6))
%Constantes de error
Kp1 = G1
Kv1 = simplify(s*G1)
Ka1 = simplify(s^2*G1)
Kp2 = G2
Kv2 = simplify(s*G2)
Ka2 = simplify(s^2*G2)
Kp3 = G3
Kv3 = simplify(s*G3)
Ka3 = simplify(s^2*G3)
s = 0;
%Errores
ess_p1 = eval(1/(1+Kp1))
ess_v1 = eval(1/Kv1)
ess_a1 = eval(1/Ka1)
ess_p2 = eval(1/(1+Kp2))
ess_v2 = eval(1/Kv2)
ess_a2 = eval(1/Ka2)
ess_p3 = eval(1/(1+Kp3))
ess_v3 = eval(1/Kv3)
ess_a3 = eval(1/Ka3)

