%% HW 6 Problem 3
% Brian Greene
% Use residuez to verify partial fraction expansion
clc
clear

numerator = [0 1 1.7];
denominator = [1 -0.2 -0.15];

[r, p, k] = residuez(numerator, denominator)