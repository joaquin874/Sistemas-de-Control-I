%Unidad 3 Ejercicio 5
pkg load control
pkg load symbolic
close all; clc; clear all;

s = tf('s');
R = 5.8;
La = 1.35*10^-4;
Ke = 0.0145;
J = 1.6*10^-7;
Bm = 2.9*10^-4;
Ki = 0.0145;
disp('W(s)');

W = Ki/(La*J*s^2+(R*J+Bm)*s+R*Bm)
t = 0:0.001:1;
u = 10*ones(1,1001);
lsim(W,u,t)
p = pole(W)
pzmap(W)