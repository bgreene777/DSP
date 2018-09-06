% Program P2_4 - modified for Q2.17
% Generate the input sequences
clf;
n = 0:40; D = 10;a = 3.0;b = -2;
x = a*cos(2*pi*0.1*n) + b*cos(2*pi*0.4*n);
xd = [zeros(1,D) x];
y = zeros(1, 41);
yd = zeros(1, length(xd));
% Compute the output y[n]
for i = 2:41
    y(i) = i * x(i) + x(i-1);
end
% Compute the output yd[n]
for i = 2:length(xd)
    yd(i) = i * xd(i) + xd(i-1);
end
% Compute the difference output d[n]
d = y - yd(1+D:41+D);
% Plot the outputs
subplot(3,1,1)
stem(n,y);
ylabel('Amplitude'); 
title('Output y[n]'); grid;
subplot(3,1,2)
stem(n,yd(1:41));
ylabel('Amplitude');
title(['Output due to Delayed Input x[n-', num2str(D),']']); grid;
subplot(3,1,3)
stem(n,d);
xlabel('Time index n'); ylabel('Amplitude');
title('Difference Signal'); grid;
suptitle('y[n] = nx[n] + x[n-1]');