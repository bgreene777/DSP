% Program P2_5 - modified for Q2.22
% Compute the impulse response y
clf;
N = 40;
% y[n]?0.4y[n?1]+0.75y[n?2]=2.2403x[n]+2.4908x[n?1]+2.2403x[n?2]
num = [2.2403 2.4908 2.2403];
den = [1.0 -0.4 0.75];
step = ones(1, N);
y = filter(num,den,step);
% Plot the impulse response
stem(y);
xlabel('Time index n'); ylabel('Amplitude');
title('Step Response'); grid;