%Unidad 3 Ejercicio 4
pkg load control
close all; clc; clear all;

s = tf('s');
Ma = 500;
Ms = 50;
Kr = 10;
Kc = 50;
Ba = 80;

disp('Xa(s)/W(s) = G(s)');

G = (Kc*Ba*s+Kc*Kr)/(Ms*Ma*s^4+(Ma+Ms)*Ba*s^3+
((Kr+Kc)*Ma+Kr*Ms)*s^2+Kc*Ba*s+Kc*Kr)

%Grafico
step(G);
%Titulo del grafico
title('Respuesta al escalon del sistema de amortiguacion');
%Nombres de los ejes
xlabel('Tiempo [s]'); ylabel('Amplitud [m]');