% Program 8_6
% Illustration of Tunable FIR Filter Design
clf;
w = 0:pi/255:pi;
f = [0 0.36 0.46 1];m = [1 1 0 0];
b1 = remez(50, f, m);
h1 = freqz(b1,1,w);
m1 = 20*log10(abs(h1));
n = -25:-1;
c = b1(1:25)./sin(0.41*pi*n);
wc = [0.31*pi 0.51*pi];
for i = 1:2
   d = c.*sin(wc(i)*n);
   q = (b1(26)*wc(i))/(0.4*pi);
	b2 = [d q fliplr(d)];
	mag(i,:) = 20*log10(abs(freqz(b2,1,w)));
end
plot(w/pi,mag(1,:),'b--',w/pi,m1,'r-',w/pi,mag(2,:),'g-.');
grid; axis([0 1 -80 5]);
xlabel('\omega /\pi');ylabel('Gain, dB');
legend('\omega_{c} = 0.31\pi','\omega_{c} = 0.41\pi','\omega_{c} = 0.51\pi')
