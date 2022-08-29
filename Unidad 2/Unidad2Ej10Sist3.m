%Unidad 2 Ejercicio 8 SISTEMA3
pkg load control
pkg load symbolic

clc; clear all; close all;

s = tf('s');
n = 2;
M1 = 10*5;
M2 = 10*(1/s)*(1/s);
l1 = -(1/s)*5;
l2 = -(1/s)*(1/s);
l3 = -5*1;
l4 = -(1/s)*10*s;
l5 = 5*(-10*s)*(-5);

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
D1 = 1-(l4)
M = (10*D1)/D