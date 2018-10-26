% Q3.24
% Compute the N-point DFT of two length-N real sequences using a single
% N-point DFT and compare result by computing directly the two N-point DFTs
% Brian R. Greene
clc
clear
clf

%% Calculations
% setup inputs
N = 256;
n = 0:N-1;
g = (0.5).^n;
h = (-0.1).^n;
x = g + 1i*h; % combine

% calculate FFT
G = fft(g);
H = fft(h);
X = fft(x);

% G[k] = 0.5(X[k] + X*[<-k>_N])
% H[k] = (1/2j)(X[k] - X*[<-k>_N])
Xconj = conj(X);
XconjModular = [Xconj(1) fliplr(Xconj(2:N))];
G2 = 0.5 * (X + XconjModular);
H2 = (1/(2*1i)) * (X - XconjModular);

%% Plot G
% plot real and imaginary parts of G = fft(g)
figure(1)
subplot(2,2,1)
plot(n, real(G))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Re\{G[k]\}, 2 N-point DFTs')

subplot(2,2,2)
plot(n, imag(G))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Im\{G[k]\}, 2 N-point DFTs')

% plot real and imaginary parts of G from 1 N-point DFT
subplot(2,2,3)
plot(n, real(G2))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Re\{G[k]\}, 1 N-point DFT')

subplot(2,2,4)
plot(n, imag(G2))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Im\{G[k]\}, 1 N-point DFT')

suptitle('G[k] = DFT\{g[n]\} = DFT\{0.5^n\}')
%% Plot H
% plot real and imaginary parts of H = fft(h)
figure(2)
subplot(2,2,1)
plot(n, real(H))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Re\{H[k]\}, 2 N-point DFTs')

subplot(2,2,2)
plot(n, imag(H))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Im\{H[k]\}, 2 N-point DFTs')

% plot real and imaginary parts of H from 1 N-point DFT
subplot(2,2,3)
plot(n, real(H2))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Re\{H[k]\}, 1 N-point DFT')

subplot(2,2,4)
plot(n, imag(H2))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Im\{H[k]\}, 1 N-point DFT')

suptitle('H[k] = DFT\{h[n]\} = DFT\{(-0.1)^n\}')