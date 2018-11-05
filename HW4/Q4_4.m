% Q4.4
% compute the group delay of a causal LTI discrete-time system
% Brian R. Greene
clc
clear
% input parameters
num = [0 1 -1.2 1]; 
den = [1 -1.3 1.04 -0.222];
% group delay
[gd, w] = grpdelay(num, den);

% plot
clf
plot(w/pi, gd)
title('Q4.4: Group delay of H(z) = H(e^{j\omega})')
xlabel('\omega /\pi')
ylabel('Group Delay')
grid on