% Program P3_6 - modified for Q3.20
% Time Reversal Property of DTFT
clf;
w = -pi:2*pi/255:pi; % frequency vector
n = 0:31;
num = (-0.5).^n; % input sequence
L = length(num)-1; % length of sequene
h1 = freqz(num, 1, w); % DTFT of num
h2 = freqz(fliplr(num), 1, w); % DTFT of time-reversed num
h3 = exp(w*L*i).*h2; % phase-shifted h2
% plot magnitude spectrum of original sequence
subplot(2,2,1)
plot(w/pi,abs(h1));grid
title('Magnitude Spectrum of Original Sequence')
xlabel('\omega /\pi')
ylabel('Amplitude')
% plot magnitude spectrum of time-reversed sequence
subplot(2,2,2)
plot(w/pi,abs(h3));grid
title('Magnitude Spectrum of Time-Reversed Sequence')
xlabel('\omega /\pi')
ylabel('Amplitude')
% plot phase spectrum of original sequence
subplot(2,2,3)
plot(w/pi,angle(h1));grid
title('Phase Spectrum of Original Sequence')
xlabel('\omega /\pi')
ylabel('Phase [radians]')
% plot phase spectrum of time-reversed sequence
subplot(2,2,4)
plot(w/pi,angle(h3));grid
title('Phase Spectrum of Time-Reversed Sequence')
xlabel('\omega /\pi')
ylabel('Phase [radians]')
