%Unidad 2 Ejercicio 3 
pkg load symbolic 
clear all; close all; clc;

syms s G1 G2 Ka Kb real 
syms L R J B real

N = 3;
G1 = 1/(L*s+R)
G2 = 1/(J*s+B)

printf("Entrada E(s); Salida W(s)\n");
LAaux = G1*Ka*G2
%FT1 = feedback(LAaux, Kb)
FT1 = LAaux/(1+LAaux)
printf("Entrada E(s); Salida I(s)\n");
FT2 = G1/(1+Kb*G2*Ka)
printf("Entrada TL(s); Salida Y(s)\n");
FT3 = G2/(1+Kb*G1*Ka)
printf("Entrada TL(s); Salida I(s)\n");
LAaux = G2*Kb*(-1)*G1
FT4 = LAaux/(1+(-1)*Ka)