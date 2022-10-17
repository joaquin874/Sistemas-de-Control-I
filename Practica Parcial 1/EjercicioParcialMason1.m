%Ejercicio Parcial 

pkg load symbolic 
clear all; close all; clc;

syms G1 G2 G3 G4 real 

N = 3;
M1 = G3
M2 = -G1*G4
M3 = G2*G4
l1 = -G3
l2 = -G4*G3
l3 = G1*G4
l4 = -G3
l5 = -G2*G4
delta = 1-(l1+l2+l3+l4+l5)+(l1*l2)
delta1 = 1-l2
delta2 = 1
delta3 = 1

printf("Entrada R(s); Salida Y(s)");
M = (M1*delta1+M2*delta2+M3*delta3)/delta