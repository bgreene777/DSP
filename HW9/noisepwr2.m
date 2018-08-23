function nvar = noisepwr2(num,den)
% Computes the approximate output noise variance due
% to input quantization of a digital filter
% by summing the square of the impulse response samples
%
% num and den are the numerator and denominator
% polynomial  coefficients of the IIR transfer function
%
x = 1;
order = max(length(num),length(den))-1;
si = [zeros(1,order)];
nvar = 0; k = 1;
while k > 0.0000001
	[y,sf] = filter(num,den,x,si);
	si = sf; k = abs(y)*abs(y);
	nvar = nvar + k;
	x = 0;
end
disp('Output Noise Variance = ');disp(nvar)
