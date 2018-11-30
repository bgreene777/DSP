% Q7.9 - zero-phase lowpass filters to demonstrate Gibbs - even length
% Brian R. Greene
clc
clear
% setup parameters
n = -39.5:39.5;
h = 0.4 * sinc(0.4*n);
w = 0:pi/1023:pi;
H = freqz(h, 1, w);
% plot length-80 sequence
figure(1);
clf
plot(w/pi, abs(H))
grid on
xlabel('\omega /\pi')
ylabel('|H(e^{(j\omega})|')
title('Magnitude Response length 80')
% length 60
h60 = h(11:70);
H60 = freqz(h60, 1, w);
% plot length 60
figure(2);
clf
plot(w/pi, abs(H60))
grid on
xlabel('\omega /\pi')
ylabel('|H(e^{(j\omega})|')
title('Magnitude Response length 60')
% length 40
h40 = h(21:60);
H40 = freqz(h40, 1, w);
% plot length 40
figure(3);
clf
plot(w/pi, abs(H40))
grid on
xlabel('\omega /\pi')
ylabel('|H(e^{(j\omega})|')
title('Magnitude Response length 40')
% length 20
h20 = h(31:50);
H20 = freqz(h20, 1, w);
% plot length 20
figure(4);
clf
plot(w/pi, abs(H20))
grid on
xlabel('\omega /\pi')
ylabel('|H(e^{(j\omega})|')
title('Magnitude Response length 20')