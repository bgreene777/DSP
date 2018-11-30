% Q7.25
% Use fir2 to design FIR filter N=95
% Brian R. Greene
clc
clear
% Input parameters
N = 95;
a = [0.4 0.4 1.0 1.0 0.8 0.8];
f = [0 0.25 0.3 0.45 0.5 1.0];
% filter
h = fir2(N, f, a);
% magnitude response
w = 0:pi/511:pi;
H = freqz(h, 1, w);
% plot magnitude response
figure(1);
clf
plot(w/pi, abs(H))
grid on
xlabel('\omega /\pi')
ylabel('|H(e^{j\omega})|')
title('Magnitude Response N=95 FIR')