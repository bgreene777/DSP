% Program P3_4 - modified for Q3.14
% Convolution Property of DTFT
clf;
w = -pi:2*pi/255:pi; % frequency vector
Lx1 = 0:17;
Lx2 = 2;
x1 = (0.5).^Lx1; % sequence x1
x2 = 1.0*ones(1,Lx2); % sequence x2
y = conv(x1,x2); % time domain convolution of x1 and x2
h1 = freqz(x1, 1, w); % DTFT of x1
h2 = freqz(x2, 1, w); % DTFT of x2
hp = h1.*h2; % product of h1 and h2
h3 = freqz(y,1,w); % DTFT of sequence y - should equal hp
% plot product of magnitude spectra
subplot(2,2,1)
plot(w/pi,abs(hp));grid
title('Product of Magnitude Spectra')
xlabel('\omega /\pi')
ylabel('Amplitude')
% plot magnitude spectrum of time-domain convolution
subplot(2,2,2)
plot(w/pi,abs(h3));grid
title('Magnitude Spectrum of Convolved Sequence')
xlabel('\omega /\pi')
ylabel('Amplitude')
% plot phase of frequency-domain multiplied spectra
subplot(2,2,3)
plot(w/pi,angle(hp));grid
title('Sum of Phase Spectra')
xlabel('\omega /\pi')
ylabel('Phase [radians]')
% plot phase of time-domain convolved spectra
subplot(2,2,4)
plot(w/pi,angle(h3));grid
title('Phase Spectrum of Convolved Sequence')
xlabel('\omega /\pi')
ylabel('Phase [radians]')
