%%Unidad 4 Ejercicio 6
pkg load control
pkg load symbolic 
clear all; close all; clc;

%syms s t real
s = tf('s')
G1 = 15/(5*s+1)
%step(G1)

G2 = 3000/(s^2+156.258*s+1837.5)
step(G2)