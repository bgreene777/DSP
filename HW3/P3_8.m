% Program P3_8 - modified for Q3.32
% Circular Time-Shifting Property of DFT
clf;
x = [0 2 4 6 8 10 12 14 16]; % input sequence
N = length(x)-1; % length of input sequence -1
n = 0:N; % time indices
y = circshift1(x,5); % circularly shift x
XF = fft(x); % DFT of x
YF = fft(y); % DFT of y
% plot DFT magnitude of original sequence
subplot(2,2,1)
stem(n,abs(XF));grid
title('Magnitude of DFT of Original Sequence');
xlabel('Frequency k')
ylabel('Amplitude')
% plot DFT magnitude of circularly shifted sequence
subplot(2,2,2)
stem(n,abs(YF));grid
title('Magnitude of DFT of Circularly Shifted Sequence');
xlabel('Frequency k')
ylabel('Amplitude')
% plot DFT phase of original sequence
subplot(2,2,3)
stem(n,angle(XF));grid
title('Phase of DFT of Original Sequence');
xlabel('Frequency k')
ylabel('Phase [radians]')
% plot DFT phase of circularly shifted sequence
subplot(2,2,4)
stem(n,angle(YF));grid
title('Phase of DFT of Circularly Shifted Sequence');
xlabel('Frequency k')
ylabel('Phase [radians]')
