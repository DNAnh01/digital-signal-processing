clear; close all;
audioName = 'test.wav';
[x,Fs] = audioread(audioName);

% sound(x,Fs);

t = (1:length(x)) / Fs; % vector chua cac thoi diem lay mau 
subplot(2,1,1);
plot(t, x); xlabel('Time t'); ylabel('Amplitude x');

Fs1 = Fs * 2;
t1 = (1:length(x)) / Fs1;
subplot(2,1,2);
plot(t1, x); xlabel('Time t1'); ylabel('Amplitude x');


%sound(x,Fs1);
Fs2= Fs /2;
t2 = (1:length(x)) / Fs1;
% subplot(2,1,2);
% plot(t1, x); xlabel('Time t1'); ylabel('Amplitude x');
sound(x,Fs2);
