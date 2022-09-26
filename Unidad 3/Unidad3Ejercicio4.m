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

close all; clear all; clc
pkg load symbolic
pkg load control
%s = tf('s')
syms s Ma Xa Xs Ba Kr Ms Kc U real
eq1=Ma*s^2*Xa==Ba*s*(Xs-Xa)+Kr*(Xs-Xa)
eq2=Ms*s^2*Xs==Ba*s*(Xa-Xs)+Kr*(Xa-Xs)+Kc*(U-Xs)
S=solve(eq1,eq2,Xa,U) % resuelve las ecuaciones, da estructura S.Xa y
G=S.Xa/S.U
G1=factor(G, s, 's')
[N, D] = numden(G1)
G2 = tf(sym2poly(N),sym2poly(D))

%G=simplify(G)