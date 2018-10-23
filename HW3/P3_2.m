% Program P3_2 modified for Q3.6
% Time-Shifting Properties of DTFT
clf;
w = -pi:2*pi/255:pi; % frequency vector
wo = 0.4*pi; % fundamental frequency
D = 15; % amount of time shift
num = [1 2 3]; % input sequence
h1 = freqz(num, 1, w); % DTFT of original sequence
h2 = freqz([zeros(1,D) num], 1, w); % DTFT of time-shifted sequence
% plot DTFT magnitude spectrum of original sequnce
subplot(2,2,1)
plot(w/pi,abs(h1));grid
title('Magnitude Spectrum of Original Sequence')
xlabel('\omega / \pi')
ylabel('Amplitude')
% plot DTFT magnitude spectrum of time-shifted sequence
subplot(2,2,2)
plot(w/pi,abs(h2));grid
title('Magnitude Spectrum of Time-Shifted Sequence')
xlabel('\omega / \pi')
ylabel('Amplitude')
% plot DTFT phase of original sequence
subplot(2,2,3)
plot(w/pi,angle(h1));grid
title('Phase Spectrum of Original Sequence')
xlabel('\omega / \pi')
ylabel('Phase [radians]')
% plot DTFT phase of time-shifted sequence
subplot(2,2,4)
plot(w/pi,angle(h2));grid
title('Phase Spectrum of Time-Shifted Sequence')
xlabel('\omega / \pi')
ylabel('Phase [radians]')