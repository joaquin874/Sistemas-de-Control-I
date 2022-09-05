%Unidad 3 Ejercicio 9
pkg load symbolic
pkg load control

clc; clear all; close all;

syms Theta X F real
syms I m k g M b l real
syms s a w t real

%Plantear las 2 ecuaciones
eq1 = I*s^2*Theta+m*l^2*s^2*Theta == m*g*l*Theta+m*l*s^2*X;
eq2 = (M+m)*s^2*X == F-b*s*X+m*l*s^2*Theta;
%Despejar X de la primera ecuacion
eq3 = solve(eq1, X);
%Reemplazar en la segunda ecuacion
F = (M+m)*s^2*eq3+b*s*eq3+m*l*s^2*Theta;
F1 = factor(F,s,'s');
%Funcion de transferencia 
G1 = Theta/F1

%Otro metodo
Xs = ((m*l^2+I)*s^2-m*g*l)/(m*l*s^2)*Theta;
Fs = (M+m)*s^2*Xs+b*s*Xs-m*l*s^2*Theta;

ThetaF = 1/factor(Fs/Theta, 'Theta')