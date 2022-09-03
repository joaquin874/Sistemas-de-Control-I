%Unidad 3 Ejercicio 3
pkg load symbolic

syms s w a t A M B K V X real

% Ma(t)+Bv(t)+Kx(t) = f(t)
% MA(s)+BV(s)+KX(s) = F(s)

F = M*A+B*V+K*X;

FT1 = solve(F, X)