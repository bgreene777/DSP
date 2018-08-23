% Program P10_5
% Illustration of Decimation Process
%
clf;
M = input('Down-sampling factor = ');
n = 0:99;
x = sin(2*pi*0.043*n) + sin(2*pi*0.031*n);
y = decimate(x,M,'fir');
subplot(2,1,1);
stem(n,x(1:100));
title('Input Sequence');
xlabel('Time index n');ylabel('Amplitude');
subplot(2,1,2);
m = 0:(100/M)-1;
stem(m,y(1:100/M));
title('Output Sequence');
xlabel('Time index n');ylabel('Amplitude');
