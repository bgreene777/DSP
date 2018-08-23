% Program P10_4
% Effect of Down-sampling in the Frequency Domain
% Use fir2 to create a bandlimited input sequence
clf;
freq = [0 0.42 0.48 1]; mag = [0 1 0 0];
x = fir2(101, freq, mag);
% Evaluate and plot the input spectrum
[Xz, w] = freqz(x, 1, 512);
subplot(2,1,1);
plot(w/pi, abs(Xz)); grid
xlabel('\omega/¹'); ylabel('Magnitude');
title('Input Spectrum');
% Generate the down-sampled sequence
M = input('Type in the down-sampling factor = ');
y = x([1: M: length(x)]);
% Evaluate and plot the output spectrum
[Yz, w] = freqz(y, 1, 512);
subplot(2,1,2);
plot(w/pi, abs(Yz)); grid
xlabel('\omega/¹'); ylabel('Magnitude');
title('Output Spectrum');
