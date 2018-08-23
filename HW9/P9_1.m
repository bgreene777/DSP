% Program P9_1
% Coefficient Quantization Effects on Direct Form
% Realization of an IIR Transfer Function
clf;
[b,a] = ellip(6,0.05,60,0.4);
[g,w] = gain(b,a);
bq = a2dT(b,5);aq = a2dT(a,5);
[gq,w] = gain(bq, aq);
plot(w/pi,g,'b', w/pi,gq,'r--');
axis([0 1 -80 1]);grid
xlabel('\omega /\pi');ylabel('Gain, dB');
legend('original', 'quantized');
pause
zplane(b,a);
hold on
pzplot(bq,aq);
hold off
title('Original pole-zero locations: x, o; New pole-zero locations: +, *')
