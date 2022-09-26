%Unidad 3 Ejercicio 7
pkg load control
pkg load symbolic
close all; clc; clear all;

s = tf('s');
Wmax = 785.4;
Tao = 0.0044;
Vin = 12;

disp('Funcion de Transferencia de Primer Orden');
G1 = (Wmax/12)/(Tao*s+1)
t = 0:0.001:1;
u = 12*heaviside(t);
lsim(G1,u,t)

disp('Funcion de Transferencia de Segundo Orden');
G2 = (Wmax/12)/(Tao*s/2+1)^2
t = 0:0.001:1;
u = 12*heaviside(t);
lsim(G2,u,t)

