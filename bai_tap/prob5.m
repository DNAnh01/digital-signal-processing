clear;
close All;
nameAudio = 'test.wav';
[x,Fs] = audioread(nameAudio);

tStart = 0;
tEnd = length(x) / Fs;
% soundsc(x,Fs);

F1 = Fs/2;
x1 = zeros(1,fix(length(x)/2));
for i = 1:1:fix(length(x)/2)
    x1(i) = x(2*i); 
end
T1 = 1/F1;
t1 = tStart:T1:tEnd;
t1 = t1(2:end);
figure(1);
plot(t1,x1);
xlabel('time');
ylabel('value');
% soundsc(x1,F1);

F2 = Fs * 2;
x2 = zeros(1,length(x)*2);
x2(1) = 0;%x(1)/2;
for i = 1:1:length(x)
%     x1(i) = i;
    x2(2*i) = x(i); 
    x2(2*i+1) = (x(i)+x(i+1))/2;
    %x2(2*i+1) = 0;
end
t2 = tStart:1/F2:tEnd;
plot(t2,x2);
xlabel('time');
ylabel('value');
%soundsc(x2,F2);