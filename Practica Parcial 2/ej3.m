pkg load control
clc; close all; clear all;

s = tf('s')
G = (s+10)/((s+5)*(s+6)*(s-2))

s1 = -0.97
invk1 = abs((s1+10)/((s1+5)*(s1+6)*(s1-2)));
k1 = 1/invk1

FTlc1 = feedback(G*k1, 1)
FTlcsink1 = feedback(G, 1)

s2 = -0.95+0.93i
invk2 = abs((s2+10)/((s2+5)*(s2+6)*(s2-2)));
k2 = 1/invk2

FTlc2 = feedback(G*k2, 1)
FTlc3 = feedback(G*100, 1)
step(FTlc1, FTlc2)