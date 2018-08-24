% Program for project 1.4, Q1.27
% random signals
clf;
N = 75;
x = sqrt(3) * randn(1, N); % normally distributed, zero mean, var=3
n = 0:N-1;
stem(n, x)
grid on
title('Random normally distributed signal')
xlabel('Time index n')
ylabel('Amplitude')
axis([0 N round(min(x))-0.5 round(max(x))+0.5])