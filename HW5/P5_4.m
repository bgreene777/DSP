% Program P5_4 - modified for elliptic
% Design of Analog Lowpass Filter 
clf;
Fp = 3500;Fs = 4500;
Wp = 2*pi*Fp; Ws = 2*pi*Fs;
Rp = 0.5; Rs = 30;
[N, Wn] = ellipord(Wp, Ws, Rp, Rs,'s');
[b,a] = ellip(N, Rp, Rs, Wn, 's');
wa = 0:(3*Ws)/511:3*Ws;
h = freqs(b,a,wa);
plot(wa/(2*pi), 20*log10(abs(h)));grid
xlabel('Frequency, Hz');ylabel('Gain, dB');
title('Gain response');
axis([0 3*Fs -60 5]);
