%Unidad 2 Ejercicio 1
pkg load symbolic

close all;
clc;
clear all;

syms s a w t I R1 C1 R2 C2 real

%R1 = 10*10^3;
%C1 = 1*10^-9;
%R2 = 10*10^3;
%C2 = 1*10^-9;

%Circuito 1

vin1 = I*(R1+1/(s*C1))
vout1 = I*(1/(s*C1))
H1 = vout1/vin1

disp('Circuito 2');

%Circuito 2

syms vin2 vout2 I1 I2 real

X1 = 1/(s*C1);
X2 = 1/(s*C2);

eq1 = vin2 == I1*(R1+X1)-I2*X1;
eq2 = 0 == I2*(R2+X1+X2)-I1*X1;

I1 = I2*(R2+X1+X2)/X1;

eq3 = vin2 == (I2*(R2+X1+X2)/X1)*(R1+X1)-I2*X1;

S = solve(eq3, I2)

vout2 = S*X2

eq3 = vin2 == (I2*(R2+X1+X2)/X1)*(R1+X1)-I2*X1

H2 = vout2/vin2

%Circuito 3kp

vin3a = I1*(R1+X1)
vout3a = I1*(X1)
H3a = vout3a/vin3a
vin3b = I2*(R2+X2)
vout3b = I2*(X2)
H3b = vout3b/vin3b
H3T = H3a*H3b

