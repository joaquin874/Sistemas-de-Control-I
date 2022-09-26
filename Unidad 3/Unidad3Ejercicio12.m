%Unidad 3 Ejercicio 12
pkg load control
pkg load symbolic
clc; clear all; close all;

syms a s w t real
syms Theta I V3 K1 K2 R real 
%12.1
%Se definen las ecuaciones
eq1 = s^3*Theta+5*s^2*Theta+4*s*Theta == 2*I
eq2 = s*I+I == s*(R-K1*Theta-K2*s*Theta)
%Despejo I
I = solve(eq1, I);
eq2 = s*I+I == s*(R-K1*Theta-K2*s*Theta);
aux = factor(solve(eq2,Theta), s, 's');
FT = factor((aux/R), s, 's')

%12.2
H1 = K2*s;
H2 = K1;
FdTLa = (s/(s+1))*(2/(s^3+5*s^2+4*s));
FdTLcaux = FdTLa/(1+FdTLa*H1);
FdTLc = simplify(FdTLcaux/(1+FdTLcaux*H2))
%Ambas funciones de transferencia representan el mismo sistema

