% Q3.40
% develop linear convolution of two sequences via the DFT of each
% Brian R. Greene
clc
clear
g1 = [5 4 3 2 1 0];
g2 = [-2 1 2 3 4];
g1e = [g1 zeros(1,length(g2)-1)];
g2e = [g2 zeros(1,length(g1)-1)];
G1 = fft(g1e);
G2 = fft(g2e);
y = real(ifft(G1.*G2));
disp('Linear convolution via DFT of each = ');
disp(y);
