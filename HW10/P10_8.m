% Program P10_8
% Design of Uniform DFT Filter Banks
clf;
% Design the prototype FIR lowpass filter
b = remez(20, [0 0.2 0.25 1], [1 1 0 0], [10 1]);
w = 0:2*pi/255:2*pi; n = 0:20;
for k = 1:4;
  c = exp(2*pi*(k-1)*n*i/4);
  FB =  b.*c;
  HB(k,:) = freqz(FB,1,w);
end
% Plot magnitude responses of each filter
subplot(2,2,1)
plot(w/pi, abs(HB(1,:)));
xlabel('\omega/¹');ylabel('Amplitude');
title('Filter No. 1'); axis([0 2 0 1.1]);
subplot(2,2,2)
plot(w/pi,abs(HB(2,:)));
xlabel('\omega/¹');ylabel('Amplitude');
title('Filter No. 2');axis([0 2 0 1.1]);
subplot(2,2,3)
plot(w/pi,abs(HB(3,:)));
xlabel('\omega/¹');ylabel('Amplitude');
title('Filter No. 3'); axis([0 2 0 1.1]);
subplot(2,2,4)
plot(w/pi,abs(HB(4,:)));
xlabel('\omega/¹');ylabel('Amplitude');
title('Filter No. 4'); axis([0 2 0 1.1]);
