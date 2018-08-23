% Program P6_3
% Gray-Markel Cascaded Lattice Structure
% k is the lattice parameter vector
% alpha is the vector of feedforward multipliers
format long
% Read in the transfer function coefficients
num = input('Numerator coefficient vector = ');
den = input('Denominator coefficient vector = '); 
N = length(den)-1; % Order of denominator polynomial
k = ones(1,N);
a1 = den/den(1);
alpha = num(N+1:-1:1)/den(1);
for ii = N:-1:1,
    alpha(N+2-ii:N+1) = alpha(N+2-ii:N+1)-alpha(N-ii+1)*a1(2:ii+1);
    k(ii) = a1(ii+1);
    a1(1:ii+1) = (a1(1:ii+1)-k(ii)*a1(ii+1:-1:1))/(1-k(ii)*k(ii));
end
disp('Lattice parameters are');disp(k)
disp('Feedforward multipliers are');disp(alpha)
