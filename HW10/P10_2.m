% Program P10_2
% Illustration of Down-Sampling by an Integer Factor
%
clf;
n = 0: 49;
m = 0: 50*3 - 1;
x = sin(2*pi*0.042*m);
y = x([1 : 3 : length(x)]);
subplot(2,1,1)
stem(n, x(1:50)); axis([0 50 -1.2 1.2]);
title('Input Sequence');
xlabel('Time index n');ylabel('Amplitude');
subplot(2,1,2)
stem(n, y); axis([0 50 -1.2 1.2]);
title('Output Sequence');
ylabel('Amplitude');xlabel('Time index n');
