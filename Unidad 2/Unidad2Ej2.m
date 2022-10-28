%Unidad 2 Ejercicio 2
pkg load symbolic
pkg load control

close all; clear all; clc;
s = tf('s');
%Circuito 1

kp = 31;
G1 = (53*(s+1))/((s+10)*(s+100));
G2 = 1/s;
kd = 16;

Faux = minreal(G1/(1+G1*kd)) 
%minreal simplifica la expresion para evitar errores 
%como por ejemplo e la cantida de polos y ceros en una
%funcion de transferencia 
%Faux = feedback(G1, kd)
FdtLA= minreal(Faux*kp*G2)
FdtLC= minreal(FdtLA/(1+FdtLA))
%FdtLC = feedback(FdtLA, 1)

disp('CIRCUITO 1 FIN');
%Cicuito 2

PI = (s+0.1)/s;
P = 12;
G1a = 27/(s+200);
G2a = 5/(s+0.1);

H1 = minreal(P*G1a)
H2 = feedback(H1, 1)
H3 = minreal(PI*H2*G2a)
H4 = feedback(H3, 1)

disp('CIRCUITO 2 FIN')
