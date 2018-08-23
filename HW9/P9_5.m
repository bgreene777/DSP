% Program P9_5
% Granular Limit Cycles in First-Order IIR Filter
alpha = input('Type in the value of alpha = ');
yi = 0;x = 0.411; 
for n = 1:21
	y(n) = a2dR(alpha*yi,5) + x;
    yi = y(n); x = 0;
end
k = 0:20;
stem(k,y)
ylabel('Amplitude'); xlabel('Time index n')
