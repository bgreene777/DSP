function N = kaiord(Fp, Fs, Rp, Rs, FT)
% Computation of the length of a linear-phase
% FIR multi-band filter using Kaiser's formula
% 
% Rp is the passband ripple
% Rs is the stopband ripple
% Fp is the passband edge in Hz
% Fs is the stopband edge in Hz
% FT is the sampling frequency in Hz.  
% If none specified default value is 2
% N is the estimated FIR filter order
if nargin == 4,
	FT = 2;
end
if length(Fp) > 1,
	TBW = min(abs(Fp(1) - Fs(1)), abs(Fp(2) - Fs(2)));
else
	TBW = abs(Fp - Fs);
end
num = -20*log10(sqrt(Rp*Rs))-13;
den = 14.6*TBW/FT;
N = ceil(num/den);
