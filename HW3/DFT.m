% Compute and plot L-point DFT X[k] of sequence x[n] of length N, L >= N
% Brian R. Greene
clear
clc
clf

N = 256; % signal length
L = 256; % DFT length
n = 0:N-1; % time index
k = 0:L-1; % DFT index

xreal = cos(n*pi/16); % real signal
ximg = zeros(1, N); % imaginary signal
x = xreal + 1i*ximg; % full signal

X = fft(x,L); % DFT
x2 = ifft(X, L); % IDFT

% plot real part of input
subplot(3,2,1)
plot(n, xreal)
grid on
title('Re\{x[n]\}')
xlabel('Time n')
ylabel('Amplitude')
% plot imaginary part of input
subplot(3,2,2)
plot(n, ximg)
grid on
title('Im\{x[n]\}')
xlabel('Time n')
ylabel('Amplitude')
% plot real part of DFT
subplot(3,2,3)
plot(k, real(X))
grid on
title('Re\{X[k]\}')
xlabel('Frequency k')
ylabel('Amplitude')
% plot imaginary part of DFT
subplot(3,2,4)
plot(k, imag(X))
grid on
title('Im\{X[k]\}')
xlabel('Frequency k')
ylabel('Amplitude')
% plot real part of IDFT
subplot(3,2,5)
plot(k, real(x2))
grid on
title('Re\{IDFT\{X[k]\}\}')
xlabel('Time n')
ylabel('Amplitude')
% plot imaginary part of IDFT
subplot(3,2,6)
plot(k, imag(x2))
grid on
title('Im\{IDFT\{X[k]\}\}')

suptitle('L-point DFT X[k] of sequence x[n] of length N, L >= N')
