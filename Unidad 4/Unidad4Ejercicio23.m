%Unidad 4 Ejercicio 23 
pkg load control
clc; close all; clear all;
s = tf('s');
%{
Que sea criticamente amortiguada se puede 
utilizar un valor de 0,707 de zeta 
%}

G1 = 20/((s+10)*(s+100))
zeta = 0.707
rlocus(G1)
sgrid(zeta, [20 40 55 60 80])
%Primer caso: Respuesta criticamente amortiguada
s1 = -55;
%A partir de la condicion de modulo:
%|G(s)H(s)|=1/K  Valida para todos los "s" que se encuentren
%en el lugar de raices
invK = abs(20/((s1+10)*(s1+100)))
K = 1/invK
%Verificacion
FT1 = feedback(K*G1,1)
pole(FT1)
step(FT1,0.4)

%Segundo caso: Respuesta con sobrepasamiento del 4%
s2 = -55+55i;
invK = abs(20/((s2+10)*(s2+100)))
K = 1/invKz
%{
figure
hold on
for k = 0:1:200
FT1 = feedback(k*G1);
pzmap(FT1)
end
%}