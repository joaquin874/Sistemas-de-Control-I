%Unidad 4 Ejercicio 7
pkg load control
pkg load symbolic 
clc; clear all; close all;

s = tf('s');
Taoa = 0.1
Ka = 1
Ga = Ka/(Taoa*s+1)
Taob = 0.25*10^-3
Kb = 0.9
Gb = Kb/(Taob*s+1)
Taoc = 10
Kc = 8500
Gc = Kc/(Taoc*s+1)
Taod = 150
Kd = 95
Gd = Kd/(Taod*s+1)
Taoe = 0.16*10-6
Ke = 0.75
Ge = Ke/(Taoe*s+1)
Taof = 0.75*10^-3
Kf = 0.8
Gf = Kf/(Taof*s+1)
step(Ga)