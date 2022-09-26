%Unidad 3 Ejercicio 2
pkg load control
close all; clc; clear all;

s = tf('s');

G = 3000/(s^2+156.25*s+1837.5)
t = 0:0.001:1;
%u = 10*ones(1,1001);
u = 10*heaviside(t);
lsim(G,u,t)
%step(G)
%p = pole(G)
%pzmap(G)