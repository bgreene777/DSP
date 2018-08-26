% Program for Q1.41
% Generation of square and sawtooth waves
% square
a = 0:30;
n1 = linspace(0, 6*pi, 31);
x1 = 2.5 * square(n1, 60);
x2 = 2.5 * square(n1, 30);
% saw
b = 0:50;
n2 = linspace(0, 5*pi, 51);
x3 = 2 * sawtooth(n2);
x4 = 2 * sawtooth(n2, 0.5);
% plot square
figure(1)
clf;
subplot(1, 2, 1)
stem(a, x1);
axis([0,30,-3,3]);
title('Square wave (a)');
xlabel('Time index n');
ylabel('Amplitude');
grid; axis;

subplot(1, 2, 2)
stem(a, x2)
axis([0,30,-3,3]);
title('Square wave (b)');
xlabel('Time index n');
ylabel('Amplitude');
grid; axis;
suptitle('Figure 1.1 Square wave sequences')

% plot saw
figure(2)
clf;
subplot(1, 2, 1)
stem(b, x3)
axis([0,50,-2,2]);
title('Sawtooth wave (a)');
xlabel('Time index n');
ylabel('Amplitude');
grid; axis;

subplot(1, 2, 2)
stem(b, x4)
axis([0,50,-2,2]);
title('Sawtooth wave (b)');
xlabel('Time index n');
ylabel('Amplitude');
grid; axis;
suptitle('Figure 1.2 Sawtooth wave sequences')