pkg load control 
clc; close all; clear all;

s = tf('s')
G1 = (15*(s+40))/(s*(s+10)*(s+15))
s1 = -3.84+3.84i
invk = abs((15*(s1+40))/(s1*(s1+10)*(s1+15)));
k = 1/invk

G2 = (5*(s+5))/((s+2)*(s+4)*(s+10))
rlocus(G2)
psita = sqrt((log(0.04)^2)/(pi^2+log(0.04)^2))
sgrid(psita, [10])
s2 = -5.2+5.1i
invk = abs((5*(s2+5))/((s2+2)*(s2+4)*(s2+10)));
k = 1/invk
ftlca = feedback(G2*k,1)
ftlcb = feedback(G2,1)
step(ftlca,ftlcb)