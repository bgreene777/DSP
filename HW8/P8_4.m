% Program P8_4
num = remez(9, [0 0.3 0.5 1],[1 1 0 0]);
disp('Filter coefficients are ');disp(num);
impres = filter(num,1 ,[1 zeros(1,9)]);
disp('Actual filter coeffs are '); disp(impres);
