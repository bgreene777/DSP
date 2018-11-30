% Program P7_1 - cheby2 highpass
clear
clc
% Design of a cheby2 highpass Digital Filter
FT = 7000;
Fp1 = 1400;
Fp2 = 2100;
Fs1 = 1050;
Fs2 = 2450;
Rp = 0.4;
Rs = 50;
Wp = [2*Fp1/FT 2*Fp2/FT];
Ws = [2*Fs1/FT 2*Fs2/FT];
% Estimate the Filter Order
[N1, Wn1] = ellipord(Wp, Ws, Rp, Rs); 
% Design the Filter
[num,den] = ellip(N1,Rp, Rs, Wn1);
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
title('Gain Response of an Elliptical Passband Filter');
% Plot
figure(2);
clf
plot(wp/pi, H_unwrap)
grid
xlabel('\omega /\pi')
ylabel('Unwrapped phase [rad]')
title('Unwrapped phase response - Elliptical Passband Filter')
% group delay
gd = grpdelay(num, den, wp);
figure(3);
clf
plot(wp/pi, gd)
grid
xlabel('\omega /\pi')
ylabel('Group delay [s]')
title('Group delay - Elliptical Passband Filter')
%ylim([0 20])
%Display the transfer function
