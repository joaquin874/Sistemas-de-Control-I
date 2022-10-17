%Ejercicio 4
pkg load symbolic
pkg load control
clc; clear all; close all;

syms s Y X U real
K = 6
T4 = 137

T = T4/4
FT = K/(T*s+1)
G = tf([K], [T 1]) 
step(G)