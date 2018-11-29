% Program P7_1 - unwrap
clear
clc
% Design of a Butterworth Bandstop Digital Filter
Ws = [0.4 0.6]; Wp = [0.2 0.8]; Rp = 0.4; Rs = 50;
% Estimate the Filter Order
[N1, Wn1] = buttord(Wp, Ws, Rp, Rs); 
% Design the Filter
[num,den] = butter(N1,Wn1,'stop');
% Frequency response
wp = 0:pi/1023:pi;
H = freqz(num, den, wp);
H_unwrap = unwrap(angle(H));
% Plot
figure(1);
clf
plot(wp/pi, H_unwrap)
grid
xlabel('\omega /\pi')
ylabel('Unwrapped phase [rad]')
title('Unwrapped phase response - Butterworth Bandstop Filter')
% group delay
gd = grpdelay(num, den, wp);
figure(2);
clf
plot(wp/pi, gd)
grid
xlabel('\omega /\pi')
ylabel('Group delay [s]')
title('Group delay - Butterworth Bandstop Filter')
ylim([3 10])
% % Display the transfer function
% disp('Numerator Coefficients are ');disp(num);
% disp('Denominator Coefficients are ');disp(den);
% % Compute the gain response
% [g, w] = gain(num,den); 
% % Plot the gain response
% plot(w/pi,g);grid 
% axis([0 1 -60 5]);
% xlabel('\omega /\pi'); ylabel('Gain in dB');
% title('Gain Response of a Butterworth Bandstop Filter');
