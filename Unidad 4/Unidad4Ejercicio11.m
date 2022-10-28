%Unidad 4 Ejercicio 11
pkg load control
clc; clear all; close all;
s = tf('s');
syms k real
%Sistema 1
rec1 = roots([1 2.996 3 10.988])
%El sistema 1 es inestable

%Sistema 2
rec2 = roots([2 4 2])
%El sistema 2 es estable

%Sistema 3
figure
hold on
for k = 0:1:10
a = 2+k;
rec3 = roots([3 a 1])
end
%El sistema 3 estable
