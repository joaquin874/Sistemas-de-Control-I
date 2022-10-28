%Unidad 4 Ejercicio 15
pkg load control
pkg load symbolic
clc; clear all; close all;
syms s K real

C = 1/((s+1)^3)
FTLC = simplify((K*C)/(1+K*C))