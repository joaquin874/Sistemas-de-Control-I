%Unidad 4 Ejercicio 6
pkg load control
pkg load symbolic
clear all; clc; close all;

s = tf('s');

G1 = 15/(5*s+1)
G2 = 1/(5*s+1)
G3 = 1/(s+5)
G4 = 15/(s+5)
G5 = (15/(5*s+1))
G6 = 1/(s+5)
G7 = 15/(5*s+1)
G8 = 1/(5*s+1)
G9 = 1/(s+5)
G10 = 15/(5*s+1)
G11 = 1/(5*s+1)
G12 = 1/(s+5)
step(G5)
