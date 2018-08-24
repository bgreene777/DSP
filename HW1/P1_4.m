% Program P1_4 - stairs
% Generation of a sinusoidal sequence
n = 0:49;	
f = 0.08;			
phase = -pi/2;			
A = 2.5;			
arg = 2*pi*f*n - phase; 
x = A*cos(arg);
clf;			% Clear old graph
stairs(n,x);		% Plot the generated sequence
axis([0 50 -3 3]);
grid; 
title('Sinusoidal Sequence Stairs');
xlabel('Time index n');
ylabel('Amplitude');
axis;