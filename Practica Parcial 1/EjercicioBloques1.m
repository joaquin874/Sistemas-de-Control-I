%Ejercicio Parcial
pkg load control
clc; clear all; close all;

s = tf('s');

G1 = 1/(s^4+s^3+2*s^2)
G2 = (2*(s+1))/((s+2)*(s+2))
G3 = 1/(s+1)

FdTla = G1*G2
FdTlc = zpk(minreal(feedback(FdTla, G3)))