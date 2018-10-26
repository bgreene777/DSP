% Program P3_7 - modified for Q3.30
% Illustration of Circular Shift of a Sequence
clf;
M = 15; % amount of shift
a = [0 1 2 3 4 5 6 7 8 9]; % input vector
b = circshift1(a,M); % circularly shift input vector a
L = length(a)-1; % length of vector a
n = 0:L; % create time indices
% plot the original sequence
subplot(2,1,1);
stem(n,a);axis([0,L,min(a),max(a)]);
title('Original Sequence');
xlabel('Time index n')
ylabel('Amplitude')
% plot the circularly shifted sequence
subplot(2,1,2);
stem(n,b);axis([0,L,min(a),max(a)]);
title(['Sequence Obtained by Circularly Shifting by ',num2str(M),' Samples']);
xlabel('Time index n')
ylabel('Amplitude')