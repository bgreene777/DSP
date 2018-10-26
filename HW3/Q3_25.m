% Q3.25
% Compute the 2N-point DFT of length-2N real sequence using a single
% N-point DFT and compare by directly computing 2N-point DFT
% Brian R. Greene
clf
clear
clc

%% Calculations
% setup inputs
N = 256;
n = 0:N-1;
Wk_2N = exp(-1i*2*pi/N);
v = (-0.1).^n;
% g[n] = v[2n]
% h[n] = v[2n + 1], 0 <= n <= N
g = downsample(v,2);
h = downsample(v,2,1);
x = g + 1i*h;

% calculate FFT
V = fft(v);
X = fft(x);

% G[k] = 0.5(X[k] + X*[<-k>_N])
% H[k] = (1/2j)(X[k] - X*[<-k>_N])
Xconj = conj(X);
XconjModular = [Xconj(1) fliplr(Xconj(2:N/2))];
G = 0.5 * (X + XconjModular);
H = (1/(2*1i)) * (X - XconjModular);

% V[k] = G[<k>_N] + Wk_2N * H[<k>_N], 0 <= k <= 2N-1
V2 = [G G] + (Wk_2N.^n) .* [H H];

%% Plot
% plot real and imaginary complex N-point DFT
subplot(2,2,1)
plot(n, real(V2))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Re\{V[k]\}, complex N-point DFT')

subplot(2,2,2)
plot(n, imag(V2))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Im\{V[k]\}, complex N-point DFT')

% plot real and imaginary parts of real 2N-point DFT
subplot(2,2,3)
plot(n, real(V))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Re\{V[k]\}, real 2N-point DFT')

subplot(2,2,4)
plot(n, imag(V))
grid on
xlabel('Frequency k')
ylabel('Amplitude')
title('Im\{V[k]\}, real 2N-point DFT')

suptitle('V[k] = DFT\{v[n]\} = DFT\{(-0.1)^n\}')
