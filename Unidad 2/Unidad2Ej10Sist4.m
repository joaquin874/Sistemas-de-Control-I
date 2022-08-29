%Unidad 2 Ejercicio 8 SISTEMA4
pkg load control
pkg load symbolic

clc; clear all; close all;

s = tf('s');
n = 2;
M1 = 5*30;
M2 = (1/s)*(1/s)*30;
l1 = -1*(1/s);
l2 = -1*(1/s);
l3 = 5*(-1)*(-1);
l4 = -(1/s)*(1/s)*30*5*s;
l5 = 5*30*(-5*s);

disp('             M para Y5/Y1');
D = 1-(l1+l2+l3+l4+l5)
D1 = 1
D2 = 1
M = (M1*D1+M2*D2)/D

disp('             M para Y4/Y1');
D1 = 1
D2 = 1
M = (M1*D1+M2*D2)/D

disp('             M para Y2/Y1');
D1 = 1-(l2)
M = D1/D