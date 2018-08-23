% Program P1_1 - modified
% Generation of an advanced unit step sequence
clf;
% Generate a vector from -10 to 20
n = -10:20;
% Generate the unit sample sequence
sd = [zeros(1,3) ones(1,28)];
% Plot the unit sample sequence
stem(n,sd);
xlabel('Time index n');ylabel('Amplitude');
title('Unit Step Sequence Advanced 7');
axis([-10 20 0 1.2]);