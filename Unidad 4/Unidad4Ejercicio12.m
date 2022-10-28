%Unidad 4 Ejercicio 12
pkg load control

g1 = tf([50 8],[1 11 23 -8])
g2 = tf([50 8],[1 11 23 8])
g3 = tf([50 -8],[1 11 23 8])
g4 = tf([50 8],[1 0 23 8])
g5 = tf([1 -4],[1 1 3 9 16 10])
g6 = tf([1 8],[1 1 2 2 3])
g7 = tf([1 3 8],[1 4 8 8 7 4])
g8 = tf([1 0],[2 1 2 4 1 6])
g9 = tf([54],[1 13 55 75])

g1pole = roots([1 11 23 -8])
g2pole = roots([1 11 23 8])
g3pole = roots([1 11 23 8])
g4pole = roots([1 0 23 8])
g5pole = roots([1 1 3 9 16 10])
g6pole = roots([1 1 2 2 3])
g7pole = roots([1 4 8 8 7 4])
g8pole = roots([2 1 2 4 1 6])
g9pole = roots([1 13 55 75])

pzmap(g1)
step(g1)
%{
pzmap(g2)
pzmap(g3)
pzmap(g4)
pzmap(g5)
pzmap(g6)
pzmap(g7)
pzmap(g8)
pzmap(g9)
%}
%{
Sistema 1 INESTABLE
Sistema 2 ESTABLE
Sistema 3 ESTABLE
Sistema 4 INESTABLE
Sistema 5 INESTABLE
Sistema 6 INESTABLE
Sistema 7 ESTABLE
Sistema 8 INESTABLE
Sistema 9 ESTABLE
}%