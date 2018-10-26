% Q3.50
% compute the first L samples of the inverse of a rational z-transform
% where L is provided by user through command input; compute and plot first
% 50 samples of inverse of G(z) from Eq 3.32 with stem command
% Brian R. Greene
clc
clear
% input parameters
num = [2 5 9 5 3]; 
den = [5 45 2 1 1];
L = input('Enter desired length of inverse z-transform: ');
% impulse response = inverse z-transform
[g, t] = impz(num, den, L);

% plot
clf
stem(t, g)
tstring = sprintf('First %s samples of inverse z-transform', num2str(L));
title(tstring)
xlabel('Time n')
ylabel('h[n]')