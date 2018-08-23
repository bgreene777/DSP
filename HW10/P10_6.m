% Program P10_6
% Illustration of Interpolation Process
%
clf;
L = input('Up-sampling factor = ');
% Generate the input sequence
n = 0:49;
x = sin(2*pi*0.043*n) + sin(2*pi*0.031*n);
% Generate the interpolated output sequence
y = interp(x,L);
% Plot the input and the output sequences
subplot(2,1,1);
stem(n,x(1:50));
title('Input Sequence');
xlabel('Time index n'); ylabel('Amplitude');
subplot(2,1,2);
m = 0:(50*L)-1;
stem(m,y(1:50*L));
title('Output Sequence');
xlabel('Time index n'); ylabel('Amplitude');
