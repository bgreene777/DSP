% Program P6_1
% Conversion of a rational transfer function
% to its factored form
% MODIFIED to make the numerator and denominator coefficient vectors
%   the same length for calling tf2zp.
num = input('Numerator coefficient vector = ');
den = input('Denominator coefficient vector = ');
[b,a] = eqtflength(num,den); % make lengths equal
[z,p,k] = tf2zp(b,a);
sos = zp2sos(z,p,k)
