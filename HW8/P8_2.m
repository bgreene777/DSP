% Program P8_2
% Simulation of IIR Cascaded Lattice Structure
%
x1 = [1 zeros(1,6)]; % Generate unit impulse sequence
q3old = 0; q2old = 0; q1old = 0; % Initial conditions
% Enter filter coefficients
D1 = 0.357377; D2 = 0.27083; D3 =-0.2;
alpha1 = 0.02; alpha2 = 0.352; 
alpha3 = 0.276533; alpha4 = - 0.19016;
% Compute the first 7 impulse response samples
for n = 1:7
	w3 = x1(n) - D3*q3old;
	w2 = w3 - D2*q2old;
	q1new = w2 - D1*q1old;
	q2new = D1*q1new + q1old;
	q3new = D2*w2 + q2old;
	y1 = D3*w3 + q3old;
	yo(n) = alpha1*y1 + alpha2*q3new + alpha3*q2new + alpha4*q1new;
	q3old = q3new; q2old = q2new; q1old = q1new;
end
[num,den] = strucver(yo,3);
disp('Numerator coefficients are');disp(num');
disp('Denominator coefficients are');disp(den')
