% Q3.49
% compute and display rational z-transform from its zeros, poles, and gain
% Brian R. Greene
clear
clc

% input parameters
z = [0.3 2.5 -0.2+0.4i -0.2-0.4i]';
p = [0.5 -0.75 0.6+0.7i 0.6-0.7i]';
k = 3.9;

% compute factored form
[num den] = zp2tf(z, p, k);
% display
disp('Numerator: ');
disp(num);
disp('Denominator: ');
disp(den);