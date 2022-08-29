%Unidad 1 Ejercicio 6
pkg load symbolic
clc;          %limpia la ventana de comandos
clear all;    %limpia la ventana de variables

syms s t a w real

G1 = laplace(dirac(t))      %impulso unitario
G2 = laplace(heaviside(t))  %escalon unitario
G3 = laplace(exp(-2*t))     %e^-2t
G4 = laplace(7*exp(-5*t))   %7e^-5t
G5 = laplace(1+exp(-2*t))
G6 = laplace(t*sin(2*t)+3*exp(-10*t))
G7 = laplace(heaviside(t-2)*exp(-5*(t-2)))
G8 = laplace(exp(-a*t)*cos(w*t))
