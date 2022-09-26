%Unidad 3 Ejercicio 3
pkg load symbolic
pkg load control

syms s w a t M B K X F real

% Ma(t)+Bv(t)+Kx(t) = f(t)
% Las funciones v(t) se puede expresar como dx(t)/dt
% Y a(t) como d^2x(t)/dt^2 
% Entonces 
% M(d^2x(t)/dt^2)+B(dx(t)/dt)+Kx(t) = f(t)
% Ms^2X(s)+BsX(s)+KX(s) = F(s)

eq1 = F == M*s^2*X+B*s*X+K*X
F1 = solve(eq1, X)

disp('X(s)/F(s)');
FT1 = F1/F

disp('V(s)/F(s)');
FT2 = F1*s/F

disp('A(s)/F(s)');
FT3 = F1*s^2/F

