% Program 10_1
% Illustration of Up-Sampling by an Integer Factor
%
clf;
n = 0:50;
x = sin(2*pi*0.12*n);
y = zeros(1, 3*length(x));
y([1: 3: length(y)]) = x;
subplot(2,1,1)
stem(n,x);
title('Input Sequence');
xlabel('Time index n');ylabel('Amplitude');
subplot(2,1,2)
stem(n,y(1:length(x)));
title('Output Sequence');
xlabel('Time index n');ylabel('Amplitude');
