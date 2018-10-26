% Q3.51
% determine partial-fraction expansion of a rational z-transform from Eq
% 3.32 and then its inverse z-transform g[n] in closed form
% Brian R. Greene
clc
clear
% input parameters
num = [2 5 9 5 3]; 
den = [5 45 2 1 1];

% partial fraction expansion
[r, p, k] = residuez(num, den);

% print
disp('poles: ');
disp(p);
disp('residues: ');
disp(r);
disp('direct terms: ');
disp(k);