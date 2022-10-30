%Unidad 4 Ejercicio 28
pkg load control

s = tf('s');
G1 = 100/(s+100)
G2 = 2340/(s+212.8)
G = minreal(feedback(G1*G2,1))
rlocus(G)
%step(G)
Ti = 0.0012
Td = (1/2.55e5)/Ti
PID = (Ti*Td*s^2+Ti*s+1)/(Ti*s)
FTla = minreal(PID*G)
FTlc = minreal(feedback(FTla,1))
step(G,FTlc)