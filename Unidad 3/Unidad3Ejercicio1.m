%Unidad 3 Ejercicio 1 
pkg load control
close all; clc; close all;

s = tf('s');
% 5s^2Y(s)+2sY(s)+3Y(s)=X(s)+5sX(s)

disp('Y(s)/X(s) = G(s)');

G = (5*s+1)/(5*s^2+2*s+3)
p = pole(G)

if real(p) < 0
  disp('El sistema es estable');
else
  disp('El sistema es inestable');
endif
