% Program P4_2 - modified for Q4.13
% Gain Response of a Moving Average Highpass Filter
clf;
M = 5;
n = 0:M-1;
num = (-1).^n .* ones(1,M)/M;
[g,w] = gain(num,1);
plot(w/pi,g);grid
axis([0 1 -50 0.5])
xlabel('\omega /\pi');ylabel('Gain in dB');
title(['M = ', num2str(M)])
