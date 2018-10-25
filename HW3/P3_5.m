% Program P3_5 - modified for Q3.17
% Modulation Property of DTFT
clf;
w = -pi:2*pi/255:pi; % frequency vector
Lx1 = 0:17;
Lx2 = length(Lx1);
x1 = (-0.1).^Lx1; % sequence x1
x2 = Lx1; % sequence x2
y = x1.*x2; % multiplication pointwise of sequences x1 and x2
h1 = freqz(x1, 1, w); % DTFT of sequence x1
h2 = freqz(x2, 1, w); % DTFT of sequence x2
h3 = freqz(y,1,w); % DTFT of x1*x2
% plot magnitude spectrum of x1
subplot(3,1,1)
plot(w/pi,abs(h1));grid
title('Magnitude Spectrum of First Sequence')
xlabel('\omega /\pi')
ylabel('Amplitude')
% plot magnitude spectrum of x2
subplot(3,1,2)
plot(w/pi,abs(h2));grid
title('Magnitude Spectrum of Second Sequence')
xlabel('\omega /\pi')
ylabel('Amplitude')
% plot magnitude spectrum of x1*x2
subplot(3,1,3)
plot(w/pi,abs(h3));grid
title('Magnitude Spectrum of Product Sequence')
xlabel('\omega /\pi')
ylabel('Amplitude')