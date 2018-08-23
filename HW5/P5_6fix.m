% Program P5_6fix
% Determines the decimal equivalent of a
% binary number in sign-magnitude form
% NOTE: the original program P5_6.m contains errors and does not work.
%       this version is modified so that it works correctly.

format long;     % make full precision output for 'disp'
                 % (instead of rounding to 5 significant figures)
InString = input('Type in the binary fraction = ','s');
b = length(InString);

bin = zeros(b,1);

for j = 1:b
    bin(j)=str2double(InString(j));
end

d = 0;                % unsigned decimal fraction
k = -1;               % power of 2 for bin(j)
for j = 2:b
  d = d + bin(j)*2^(k);
  k = k-1;
end
if sign(bin(1)) == 0;
    dec = d;
else
    dec = -d;
end
disp('The decimal equivalent is');
disp(dec);
