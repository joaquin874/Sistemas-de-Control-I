%Unidad 3 Ejercicio 5
pkg load control
pkg load symbolic
close all; clc; clear all;

s = tf('s');
La = 10*10^-3;
Ra = 10;
Ki = 0.024;
Kb = 0.024;
Bm = 10*10^-5;
Jm = 10*10^-6;

%5.2
disp('W(s)/V(s) = G1(s)');
G1 = Ki/(La*Jm*s^2+(Ra*Jm+Bm)*s+Ra*Bm)
%5.3
disp('O(s)/V(s) = G2(s)');
G2 = Ki/(La*Jm*s^3+(Ra*Jm+Bm)*s^2+Ra*Bm*s)
%5.4
disp('Tm(s)/V(s) = G3(s)');
G3 = (Ki*Jm*s+Ki*Bm)/(La*Jm*s^2+(La*Bm+Ra*Jm)*s^2+Ra*Bm+Kb*Ki)
step(G1,G2,G3)
%step(G3)
%hold on
%plot([0 100], [G1 G1])
%step(G1)
%step(G2)