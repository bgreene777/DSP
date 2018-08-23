% Program P9_6
% Overflow Limit Cycles in Second-Order IIR Filter
alpha = input('alpha1 and alpha2 values = ');
yi1 = 0.75;yi2 = -0.75; 
for n = 1:41
    y(n) = - alpha(1)*yi1 - alpha(2)*yi2;
	y(n) = a2dR(y(n),3);
    yi2 = yi1; yi1 = y(n);
end
k = 0:40;
stem(k,y)
ylabel('Amplitude'); xlabel('Time index n')
