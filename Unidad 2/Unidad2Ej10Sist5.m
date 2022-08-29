%Unidad 2 Ejercicio 8 SISTEMA4
pkg load control
pkg load symbolic

clc; clear all; close all;

s = tf('s');
n = 2;
M1 = 5*(1/s);
M2 = (1/s)*(1/s)*30;
l1 = (1/s)*(-1);
l2 = 30*(-1);
l3 = (1/s)*(1/s)*30*(-1);
l4 = -10;
l5 = 5*(1/s)*(-1);

disp('             M para Y5/Y1');
D = 1-(l1+l2+l3+l4+l5)+(l4*l1+l4*l2+l4*l3)
D1 = 1-(l1)
D2 = 1-(l4)
M = (M1*D1+M2*D2)/D

disp('             M para Y4/Y1');
n = 1;
M = (1/s)*(1*s);
D = 1-(l1)
D1 = 1
M = (M1*D1)/D

disp('             M para Y2/Y1');
M = 1