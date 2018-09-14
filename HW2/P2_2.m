% Program P2_2 - modified for DESA-1 algorithm
% Generate a sinusoidal input signal
clf;
clear;
n = 0:250;
Amax = 5.0;
TwoSigSq = 17881;
AM = Amax*exp(-(n - 128).^2 / TwoSigSq);
alpha = 2*pi*0.00078;
beta = 2*pi*0.01;
phi = alpha*n.^2 + beta*n;
x = AM.*cos(phi);
x0 = [0 x 0]; % x0[n] = x[n] zero padded

y = [0 x 0] - [0 0 x]; % y[n] = x[n] - x[n-1]
z = [x 0 0] - [0 x 0]; % z[n] = y[n+1] = x[n+1] - x[n]

% TK[x[n]]
x1 = [x0 0 0];		% x1[n] = x[n+1] 
x2 = [0 x0 0];		% x2[n] = x[n]
x3 = [0 0 x0];		% x3[n] = x[n-1]
psix = x2.*x2-x1.*x3;  % psi[n] = x[n]^2 - x[n+1]x[n-1]

% TK[y[n]]
y1 = [y 0 0]; % y1[n] = y[n+1]
y2 = [0 y 0]; % y2[n] = y[n]
y3 = [0 0 y]; % y3[n] = y[n-1]
psiy = y2.*y2 - y1.*y3; % TK operator

% TK[z[n]]
z1 = [z 0 0]; % z1[n] = z[n+1]
z2 = [0 z 0]; % z2[n] = z[n]
z3 = [0 0 z]; % z3[n] = z[n-1]
psiz = z2.*z2 - z1.*z3; % TK operator

% reshape arrays
psix = psix(3:253);
psiy = psiy(3:253);
psiz = psiz(3:253);

% Calculate instantaneous frequency
arg = 1 - (psiy + psiz)./(4 * psix);
IF = acos(arg) / (2 * pi);

% Calculate instantaneous amplitude
IA = sqrt(psix ./ (1 - (arg.*arg)));

% Plot the input and output signals
subplot(3,1,1)
plot(n, x)
xlabel('Time index n');ylabel('Amplitude');
title('Input Signal')
subplot(3,1,2)
plot(n, IF)
xlabel('Time index n');ylabel('Frequency (cycles/sample)');
title('Instantaneous Frequency')
subplot(3,1,3)
plot(n, IA)
xlabel('Time index n');ylabel('Amplitude');
title('Instantaneous Amplitude');
