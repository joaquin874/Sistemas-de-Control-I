%Ejercicio 4
pkg load control
clc; clear all; close all;

s = tf('s');
K = 1.1
G1 = K/(0.03*s+1)^2
step(G1,0.5)

