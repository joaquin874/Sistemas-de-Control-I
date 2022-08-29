%Unidad 2 Ejercicio 8 SISTEMA1
pkg load control
pkg load symbolic

clc; clear all; close all;

syms G1 G2 G3 G4 H1 H2 H3 
n = 2;
M1 = G4*G3;
M2 = G1*G2*G3;
l1 = -G1*H1;
l2 = -G3*H2;
l3 = -G1*G2*G3*H3;
l4 = -G4*G3*H3;

%l1 y l2 son lazos disjuntos
disp('             M para Y5/Y1');
D = 1-(l1+l2+l3+l4)+(l1*l2)
D1 = 1
D2 = 1
M = (M1*D1+M2*D2)/D

disp('             M para Y4/Y1');
D = 1-(l1+l2+l3+l4)+(l1*l2)
D1 = 1
D2 = 1
M = (M1*D1+M2*D2)/D

disp('             M para Y2/Y1');
D1 = 1-(l2)
M = D1/D