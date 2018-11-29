% Program P7_1 - unwrap
clear
clc
% Design of a Butterworth Bandstop Digital Filter
Ws = 0.4; Wp = 0.2; Rp = 0.5; Rs = 40;
% Estimate the Filter Order
[N1, Wn1] = cheb1ord(Wp, Ws, Rp, Rs); 
% Design the Filter
[num,den] = cheby1(N1,Rp, Wn1);
% Frequency response
wp = 0:pi/1023:pi;
H = freqz(num, den, wp);
H_unwrap = unwrap(angle(H));
disp('Numerator Coefficients are ');disp(num);
disp('Denominator Coefficients are ');disp(den);
% Compute the gain response
[g, w] = gain(num,den); 
% Plot the gain response
figure(1);
clf
plot(w/pi,g);
grid 
axis([0 1 -60 5]);
xlabel('\omega /\pi'); ylabel('Gain in dB');
title('Gain Response of a Type 1 Chebyshev Lowpass Filter');
% Plot
figure(2);
clf
plot(wp/pi, H_unwrap)
grid
xlabel('\omega /\pi')
ylabel('Unwrapped phase [rad]')
title('Unwrapped phase response - Type 1 Chebyshev Lowpass Filter')
% group delay
gd = grpdelay(num, den, wp);
figure(3);
clf
plot(wp/pi, gd)
grid
xlabel('\omega /\pi')
ylabel('Group delay [s]')
title('Group delay - Type 1 Chebyshev Lowpass Filter')
ylim([0 20])
%Display the transfer function
