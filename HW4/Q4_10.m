% Q4.10
% compute and plot amplitude response of FIR lowpass filter of Eq 4.39
% Brian R. Greene
clc
clear

% Parameters
N = 99;
fc = 0.25;
n = [-N/2:1:N/2];
y = 2*fc*sinc(2*fc*n);
w = 0:pi/511:pi;

% Calculate magnitude response for N = 13, 14, 19, 99
h = freqz(y, [1], w);

% Plot
plot(w/pi, abs(h));
titlestr = sprintf('Magnitude Response, N = %d', N);
title(titlestr);
xlabel('\omega /\pi');
ylabel('Amplitude');
grid on
