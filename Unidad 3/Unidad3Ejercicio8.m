%Unidad 3 Ejercicio 8
pkg load symbolic 
pkg load control

syms a s t w real
syms M1 M2 B1 K1 K2 U X1 X2 real

%Planteo las ecuaciones en el dominio de laplace
eq1 = M1*s^2*X1 == B1*(s*U-s*X1)+K1*(U-X1)+K2*(X2-X1)
eq2 = M2*s^2*X2 == K2*(X1-X2)

%Obtengo la funcion de transferencia para X1(s)/U(s) y X2(s)/U(s)
disp('------------X1(s)/U(s)------------');
aux1 = solve(eq2, X2);
eqaux = M1*s^2*X1 == B1*(s*U-s*X1)+K1*(U-X1)+K2*(aux1-X1);
FT1 = simplify(solve(eqaux, X1)/U)

disp('------------X2(s)/U(s)------------');
aux1 = solve(eq1, X1);
eqaux = M2*s^2*X2 == K2*(aux1-X2);
FT2 = simplify(solve(eqaux, X2)/U)