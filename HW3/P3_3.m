% Program P3_3 modified for Q3.10
% Frequency-Shifting Properties of DTFT
clf;
w = -pi:2*pi/255:pi; % frequency vector
wo = -0.5*pi; % amount of frequency shift
num1 = [1 3 5 7]; % input sequence coefficients
L = length(num1); % length of input sequence
h1 = freqz(num1, 1, w); % DTFT of input sequence
n = 0:L-1; % index vector
num2 = exp(wo*1i*n).*num1; % frequency shifted input sequence
h2 = freqz(num2, 1, w); % DTFT of frequency-shifted input sequence
% plot magnitude spectrum of original sequence DTFT
subplot(2,2,1)
plot(w/pi,abs(h1));grid
title('Magnitude Spectrum of Original Sequence')
xlabel('\omega / \pi')
ylabel('Amplitude')
% plot magnitude spectrum of frequency-shifted sequence DTFT
subplot(2,2,2)
plot(w/pi,abs(h2));grid
title('Magnitude Spectrum of Frequency-Shifted Sequence')
xlabel('\omega / \pi')
ylabel('Amplitude')
% plot phase spectrum of original sequence DTFT
subplot(2,2,3)
plot(w/pi,angle(h1));grid
title('Phase Spectrum of Original Sequence')
xlabel('\omega / \pi')
ylabel('Phase [radians]')
% plot phase spectrum of frequency-shifted sequence DTFT
subplot(2,2,4)
plot(w/pi,angle(h2));grid
title('Phase Spectrum of Frequency-Shifted Sequence')
xlabel('\omega / \pi')
ylabel('Phase [radians]')
