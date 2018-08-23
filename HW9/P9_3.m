% Program P9_3
% Coefficient Quantization Effects on Direct Form
% Realization of an FIR Transfer Function
clf;
f = [0 0.4  0.45 1]; m = [1 1 0 0];
b = remez(19, f, m);
[g,w] = gain(b,1);
bq = a2dT(b,5);
[gq,w] = gain(bq, 1);
plot(w/pi,g,'b-',w/pi,gq,'r--');
axis([0 1 -60 10]);grid
xlabel('\omega /¹');ylabel('Gain, dB');
legend('original', 'quantized');
pause
zplane(b);
hold on
pzplot(bq);
hold off
title('Original pole-zero locations: x, o; New pole-zero locations: +, *')

