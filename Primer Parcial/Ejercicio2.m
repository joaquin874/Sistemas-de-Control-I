%Ejercicio 2
pkg load symbolic
pkg load control
clc; clear all; close all;

syms s real
n = 2
M1 = 8*1*10*(1/s)*(1/s)*4
M2 = 8*(1/s)*((s+10)/(s+100))*(1/s)*4
l1 = -1/s
l2 = -((s+10)/(s+100))*(1/s)*2
l3 = 1*10*(1/s)*(1/s)*(-2)*(-1)
delta = 1-(l1+l2+l3)
%delta1 y delta2 = 1 
M = simplify((M1+M2)/delta)