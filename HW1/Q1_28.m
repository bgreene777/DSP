% Program for project 1.4, Q1.28
% random signals
clf;
N = 31;
n = 0:N-1;
A = 4 * rand(1, 5);
phi = 2*pi * rand(1, 5);
omega = 0.2;
for i = 1:5
    x = A(i) * cos(omega*n + phi(i));
    subplot(5,1,i)
    stem(n, x)
    grid on
    % title('Random normally distributed signal')
    xlabel('Time index n')
    ylabel('Amplitude')
    axis([0 N -4.5 4.5])
end
suptitle('Five sample sequences of random sinusoid')