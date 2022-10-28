%Unidad 4 Ejercicio 23 
pkg load control
clc; close all; clear all;
s = tf('s');
psita = sqrt((log(0.04)^2)/(pi^2+log(0.04)^2))
G1 = 20/((s+10)*(s+100))
G2 = 5/(s+10)
G3 = 1200/(s^2+70*s+1000)
G4 = (12*(s+10))/(s*(s+30))
G5 = 0.75/((s+1)^3)
G6 = (150*(s+10)*(s+20))/(s*(s+5))
rlocus(G6)
sgrid(psita, [20])
%Primer caso: Respuesta criticamente amortiguada psita = 1
s1a = -55
k1a = 1/abs(20/((s1a+10)*(s1a+100)))

%G2 k puede tomar cualquier valor

s3a = -35
k3a = 1/abs(1200/(s3a^2+70*s3a+1000))

%G4 k puede tomar cualquier valor

%s5a = 

%Segundo caso: Respuesta sub-amortiguada mp <= 4
s1b = -55+55i
k1b = 1/abs(20/((s1b+10)*(s1b+100)))

%G2 no existe valor de k que me produzca una respuesta sub-amortiguada

s3b = -35+35i
k3b = 1/abs(1200/(s3b^2+70*s3b+1000))

%G4 no existe valor de k que me produzca una respuesta sub-amortiguada

