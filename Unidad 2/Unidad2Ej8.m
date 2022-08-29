%Unidad 2 Ejercicio 8
pkg load control
pkg load symbolic

clc; clear all; close all;

%s = tf('s');
R1 = 10000;
C1 = 1*10^-9;
R2 = 10000;
C2 = 1*10^-9;
R3 = 10000;
C3 = 1*10^-9;

syms s t Vin I1 I2 I3 real
%syms s t R1 R2 R3 C1 C2 C3 Vin I1 I2 I3 real


%Circuito 1
disp('Circuito 1');
G1a = 1/(R1*C1*s+1)
G2a = 1/(R2*C2*s+1)
G3a = 1/(R3*C3*s+1)

FT1 = G1a*G2a*G3a

%Circuito 2
disp('Circuito 2');
Xc1 = 1/(s*C1);
Xc2 = 1/(s*C2);
Xc3 = 1/(s*C3);

Malla1 = Vin == I1*(R1+Xc1)-I2*(Xc1)
Malla2 = 0 == -I1*(Xc1)+I2*(Xc1+R2+Xc2)-I3*(Xc2)
Malla3 = 0 == -I2*(Xc2)+I3*(Xc2+R3+Xc3)

MatI3 = [R1+Xc1, -Xc1, Vin; -Xc1, Xc1+R2+Xc2, 0; 0, -Xc2, 0]
Mat = [R1+Xc1, -Xc1, 0; -Xc1, Xc1+R2+Xc2, -Xc2; 0, -Xc2, Xc2+R3+Xc3]

I3 = (det(MatI3)/det(Mat))

Vout = (I3*Xc3)

FT2 = Vin/Vout