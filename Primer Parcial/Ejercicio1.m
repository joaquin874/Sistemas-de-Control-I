%Ejercicio 1
pkg load symbolic
pkg load control
clc; clear all; close all;

syms s real
C = 95/s
G1 = 12/(s+270)
G2 = 84/(s+11)

G = C*(G1+G2)
GLC = simplify((G/(1+G)))

s = 0;
errorp = eval(1/(1+GLC))

printf("Error en estado estable para una entrada escalon: %f\n", errorp);