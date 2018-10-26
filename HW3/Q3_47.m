% Q3.47
% compute and display poles and zeros, compute and display factored form,
% and generate pole-zero plot
% Brian R. Greene
clf
clear
clc

% input parameters
num = [2 5 9 5 3]; 
den = [5 45 2 1 1];
% compute
[z, p, k] = tf2zpk(num, den);
% display poles and zeros
disp('Zero locations: ');
disp(z);
disp('Pole locations: ');
disp(p);

% compute factored form
[sos, k2] = zp2sos(z, p, k);
% display
disp('SOS: ');
disp(sos);
disp('k: ');
disp(k2);

% create pole-zero plot
zplane(z, p)