%Ejercicio Parcial
pkg load control
clear all; close all; clc;

s = tf('s');
l1 = -1/s
l2 = -(2*(s+10))/(s*(s+100))
l3 = 10*(1/s)*(1/s)*2
M1 = 8*10*(1/s)*(1/s)
M2 = (1/s)*((s+10)/(s+100))*(1/s)
delta = 1-(l1+l2+l3)
delta1 = 1
delta2 = 1

M = minreal((M1+M2)/delta)