%Ejercicio Parcial
pkg load symbolic
pkg load control
clc; clear all; close all;

syms s X Y U real
% U(s)-C.Y(s) = A.X(s)+s.F.X(s)
% E.s.Y(s)-D.X(s)+B.Y(s) = 0
A = 81
B = 3
C = 19
D = 24
E = 89
F = 3
eq1 = U-C*Y == A*X+F*s*X
eq2 = E*s*Y-D*X+B*Y == 0
aux = solve(eq2, X)
eq1 = U-C*Y == A*aux+F*s*aux
FT = simplify(solve(eq1, Y)/U)

p = roots([89 2406 233])
p1 = p(1)
p2 = p(2)
G = tf([8], [89 2406 233])
dcgain(G)
step(G)
%s = 0;
%error = eval(1/(1+FT))

%[N, D] = numden(FT)
%G = tf(sym2poly(N),sym2poly(D))
%p = pole(G)
%pzmap(G)
%t = 0: 0.001: 0.01;
%u = heaviside(t);
%lsim(G, u, t)
%step(G)