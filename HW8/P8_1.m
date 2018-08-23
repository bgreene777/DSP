% Program P8_1
Wp = [0.4 0.5]; Ws = [0.1 0.8]; Rp = 1; Rs = 30;
[N1, Wn1] = buttord(Wp, Ws, Rp, Rs);
[num,den] = butter(N1,Wn1);
disp('Numerator coefficients are ');disp(num);
disp('Denominator coefficients are ');disp(den);
impres = direct2(num,den,[1 zeros(1,4*N1)]);
[p,d] = strucver(impres,2*N1);
disp('Actual numerator coeffs are '); disp(p');
disp('Actual denominator coeffs are '); disp(d');
