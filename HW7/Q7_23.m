% Q7.23
% Kaiser window for linear phase lowpass FIR digital filter
% Brian R. Greene
clc
clear
% Input parameters
Wp = 0.31;
Ws = 0.41;
Wn = Wp + (Ws - Wp) / 2;
As = 50; % dB
Ds = 10^(-As/20);
Dp = Ds;
% estimate order from 7.37
if As > 21
    N = ceil((As-7.95)*2/(14.36*(abs(Wp-Ws)))+1);
else
    N = ceil(0.9222*2/abs(Wp-Ws) + 1);
end
% calculate Beta from 7.36
if As > 50
    b = 0.1102*(As-8.7);
elseif As >= 21
    b = 0.5842*(As-21)^0.4 + 0.07886*(As-21);
else
    b = 0;
end
% transfer fn
window = kaiser(N+1, b);
h = fir1(N, Wn, window);
% numerator coeff
disp('Numerator coefficients are: ');
disp(h);
% gain response
[g, w] = gain(h, 1);
% plot gain
figure(1);
clf
plot(w/pi, g)
grid on
xlabel('\omega /\pi')
ylabel('Gain [dB]')
title('Gain Response Kaiser window FIR')
% frequency response
w = 0:pi/511:pi;
H = freqz(h, 1, w);
% plot phase
figure(2);
clf
plot(w/pi, unwrap(angle(H)))
grid on
xlabel('\omega /\pi')
ylabel('Phase [rad]')
title('Unwrapped Phase Response Kaiser window FIR')