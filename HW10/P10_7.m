% Program 10_7
% Illustration of Sampling Rate Alteration by
% a Ratio of Two Integers
%
clf;
L = input('Up-sampling factor = ');
M = input('Down-sampling factor = ');
n = 0:29;
x = sin(2*pi*0.43*n) + sin(2*pi*0.31*n);
y = resample(x,L,M);
subplot(2,1,1);
stem(n,x(1:30));axis([0 29 -2.2 2.2]);
title('Input Sequence');
xlabel('Time index n'); ylabel('Amplitude');
subplot(2,1,2);
m = 0:(30*L/M)-1;
stem(m,y(1:30*L/M));axis([0 (30*L/M)-1 -2.2 2.2]);
title('Output Sequence');
xlabel('Time index n'); ylabel('Amplitude');
