% Program P9_4
% Scaling & Round-off Noise Calculation
% of the Cascade Form Structure of Figure 9.6
%
b1 = input('Numerator coeffs of Sec. 1 = ');
a1 = input('Denominator coeffs of Sec. 1 = ');
b2 = input('Numerator coeffs of Sec. 2 = ');
a2 = input('Denominator coeffs of Sec. 2 = ');
format long
k1 = sqrt(5.40895600207111); 
k2 = sqrt(0.27864593117490); 
k3 = sqrt(0.25916354425563);
x1 = 1/k1;
si1 = [0 0]; si2 = [0 0];
var = 0; K = 1;
while K > 0.0000001
	y1 = - a1(1)*si1(1) - a1(2)*si1(2) + x1;
	si1(2) = si1(1); si1(1) = y1; 
	x2 = (b1(1)*y1 + b1(2)*si1(1)+ b1(3)*si1(2))/k2;
	y2 = - a2(1)*si2(1) - a2(2)*si2(2) + x2;
	si2(2) = si2(1); si2(1) = y2;
	y3 = (b2(1)*y1 + b2(2)*si1(1)+ b2(3)*si1(2))/k3;
% Approximate L2 norm square computation
	K = abs(y3)*abs(y3);
	var = var + K; 
	x1 = 0;
	end
disp('L2 norm square = ');disp(var);
