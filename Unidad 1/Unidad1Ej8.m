%Unidad 1 Ejercicio 8
pkg load symbolic
pkg load control

close all;
clc;
clear all;

syms s t a w real

G1 = tf(5,[1 2])
G1p = zpk([], [-2], 5)  %ceros, polos, ganancia estatica k
s = tf('s')
g1pp = 5/(s+2)
step(G1,20);grid
ramp(G1,20);grid
disp('Terminado')

