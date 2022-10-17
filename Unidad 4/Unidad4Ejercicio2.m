%Unidad 4 Ejercicio 2
pkg load symbolic 
close all; clear all; clc;

syms s K t real

G = (K*(2*s+1))/(s*(4*s+1)*(s+1)^2)
R = laplace(1+5*t)

essKp = factor(s*R/(1+G), s, 's')
s = 0
eval(essKp)