% Program P9_2
% Coefficient Quantization Effects on Cascade
% Realization of an IIR Transfer Function
clf;
[z,p,k] = ellip(6,0.05,60,0.4);
[b,a] = zp2tf(z,p,k);
[g,w] = gain(b,a);
sos = zp2sos(z,p,k);
sosq = a2dR(sos,6);
R1 = sosq(1,:);R2 = sosq(2,:);R3 = sosq(3,:);
b1 = conv(R1(1:3),R2(1:3));bq = conv(R3(1:3),b1);
a1 = conv(R1(4:6),R2(4:6));aq = conv(R3(4:6),a1);
[gq,w] = gain(bq, aq);
plot(w/pi,g,'b-',w/pi,gq,'r--');
axis([0 1 -80 20]);grid
xlabel('\omega /¹');ylabel('Gain, dB');
title('original - solid line; quantized - dashed line');
pause
zplane(b,a);
hold on
pzplot(bq,aq);
hold off
title('Original pole-zero locations: x, o; New pole-zero locations: +, *')
