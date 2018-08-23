function nvar = noisepwr1(num,den)
% Computes the output noise variance due
% to input quantization of a digital filter
% based on a partial-fraction approach
%
% num and den are the numerator and denominator
% polynomial coefficients of the IIR transfer function
%
[r,p,K] = residue(num,den);
R = size(r,1);
R2 = size(K,1);
	if R2 > 1
        disp('Cannot continue...');
        return;
	end
	if R2 == 1
        nvar = K^2;
	else 
        nvar = 0;
	end
% Compute round off noise variance
for k = 1:R,
	for m = 1:R,
        integral = r(k)*conj(r(m))/(1-p(k)*conj(p(m)));
        nvar = nvar + integral;
	end
end
disp('Output Noise Variance = ');disp(real(nvar))
