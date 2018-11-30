% Program P7_1 - cheby2 highpass
clear
clc
% Design of a cheby2 highpass Digital Filter
FT = 3500;
Fp = 1050;
Fs = 600;
Rp = 1;
Rs = 50;
Wp = 2*Fp/FT;
Ws = 2*Fs/FT;
% Estimate the Filter Order
[N1, Wn1] = cheb2ord(Wp, Ws, Rp, Rs); 
% Design the Filter
[num,den] = cheby2(N1,Rs, Wn1, 'high');
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
title('Gain Response of a Type 2 Chebyshev Highpass Filter');
% Plot
figure(2);
clf
plot(wp/pi, H_unwrap)
grid
xlabel('\omega /\pi')
ylabel('Unwrapped phase [rad]')
title('Unwrapped phase response - Type 2 Chebyshev Highpass Filter')
% group delay
gd = grpdelay(num, den, wp);
figure(3);
clf
plot(wp/pi, gd)
grid
xlabel('\omega /\pi')
ylabel('Group delay [s]')
title('Group delay - Type 2 Chebyshev Highpass Filter')
ylim([0 6])
%Display the transfer function
