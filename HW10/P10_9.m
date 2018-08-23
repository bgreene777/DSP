% Program P10_9
% Design of L-th Band FIR Filter Using the 
% Windowed Fourier Series Approach
%
clf;
K = 11;
n = -K:K;
% Generate the truncated impulse response of  
% the ideal lowpass filter
b = sinc(n/2)/2;
% Generate the window sequence
win = hamming(23);
% Generate the coefficients of the windowed filter
fil = b.*win';
c = fil/sum(fil);
% Plot the gain response of the windowed filter
[h,w] = freqz(c,1,256);
g = 20*log10(abs(h));
plot(w/pi,g);axis([0 1 -90 10]); grid
xlabel('\omega/¹');ylabel('Gain, dB');
