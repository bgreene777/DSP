% Q4.5
% Brian R. Greene
clc
clear
% input parameters
num = [0.15 0 -0.15]; 
den = [1 -0.5 0.7];
%L = input('Enter desired length of inverse z-transform: ');
L = 100;
% impulse response = inverse z-transform
[g, t] = impz(num, den, L);

% plot
clf
stem(t, g)
tstring = sprintf('First %s samples of inverse z-transform, 4.37', num2str(L));
title(tstring)
xlabel('Time n')
ylabel('h[n]')
grid on