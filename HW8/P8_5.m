% Program P8_5
% Illustration of Tunable IIR Filter Design
clf;
[z,p,k] = ellip(5,0.5,40,0.4);
a = conv([1 -p(1)],[1 -p(2)]);b = [1 -p(5)];
c = conv([1 -p(3)],[1 -p(4)]);
w = 0:pi/255:pi;
alpha = [0 0.1 -0.25];
for i = 1:3
	an1 = a(2) + (a(2)*a(2) - 2*(1 + a(3)))*alpha(i);
	an2 = a(3) + (a(3) -1)*a(2)*alpha(i);
	g = b(2) - (1 - b(2)*b(2))*alpha(i);
	cn1 = c(2) + (c(2)*c(2) - 2*(1 + c(3)))*alpha(i);
	cn2 = c(3) + (c(3) -1)*c(2)*alpha(i);
	a = [1 an1 an2];b = [1 g]; c = [1 cn1 cn2];
	h1 = freqz(fliplr(a),a,w); h2 = freqz(fliplr(b),b,w);
	h3 = freqz(fliplr(c),c,w);
	ma(i,:) = 20*log10(abs(0.5*(h1.*h2 + h3)));
end
plot(w/pi,ma(1,:),'r-',w/pi,ma(2,:),'b--',w/pi,ma(3,:),'g-.');
grid; axis([0 1 -80 5]);
xlabel('\omega/\pi');ylabel('Gain, dB');
legend('\alpha = 0 ','\alpha = 0.1 ','\alpha = -0.25 ');
