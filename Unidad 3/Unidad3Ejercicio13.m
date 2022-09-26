%Unidad 3 Ejercicio 12
pkg load control
pkg load symbolic
clc; clear all; close all;

syms a s t w real
syms Tm Jm Jl ThetaM ThetaL Bm k real

%Defino las 2 ecuaciones
eq1 = Tm == Jm*s^2*ThetaM-Bm*s*ThetaM+k*(ThetaM-ThetaL)
eq2 = 0 == Jl*s^2*ThetaL+k*(ThetaM-ThetaL)

%ThetaM(s)/Tm(s)
aux = solve(eq2, ThetaL);
eqaux = Tm == Jm*s^2*ThetaM-Bm*s*ThetaM+k*(ThetaM-aux);
FT1 = simplify(solve(eqaux, Tm)/ThetaM)

%ThetaL(s)/Tm(s)
aux = solve(eq1, ThetaM);
eqaux = 0 == Jl*s^2*ThetaL+k*(aux-ThetaL);
FT2 = simplify(solve(eqaux, Tm)/ThetaL)