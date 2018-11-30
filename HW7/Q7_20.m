% Q7.20
% Linear phase lowpass FIR digital filter
% Brian R. Greene
clc
clear
% input parameters
Fp = 2000;
Fs = 2500;
FT = 10000;
Rp = 0.005;
Rs = 0.005;
% Filter order
N = Kaiord(Fp, Fs, Rp, Rs, FT);
% Window
Wp = 2*Fp/FT;
Ws = 2*Fs/FT;
Wn = Wp + (Ws - Wp)/2;
h = fir1(N, Wn);
% numerator coefficients
disp('Numerator Coefficients: ');
disp(h);
% gain response
[g, w] = gain(h, 1);
% plot
figure(1);
plot(w/pi, g)
grid on
xlabel('\omega /\pi')
ylabel('Gain [dB]')
title('Gain Response FIR')
% phase response
w = 0:pi/511:pi;
H = freqz(h, 1, w);
% plot
figure(2);
plot(w/pi, unwrap(angle(H)))
grid on
xlabel('\omega /\pi')
ylabel('Phase [rad]')
title('Unwrapped Phase Response FIR')