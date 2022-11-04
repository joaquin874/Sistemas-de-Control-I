%Ejercicio 4
pkg load control
clc; clear all; close all;

s = tf('s');
K = 1.1;
Tao = 0.065;
%Para un sistema de segundo orden con un psita >= 1 se puede aproximar
%como un sistema de primer orden
G1 = K/((Tao/2)*s+1)^2
step(G1,0.3)

