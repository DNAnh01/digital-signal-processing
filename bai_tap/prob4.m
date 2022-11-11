clear; close all;
t_start = 0; t_end = 2; Fs = 8000; T = 1/Fs; F0 = 1000; phi = 0;
Fs1 = 4*F0; 
Fs2 = 1.5*F0;
Fs3 = 10*F0;
% Tinh chu ky lay mau cua tung tan so lay mau
T1 = 1/Fs1; 
T2 = 1/Fs2;
T3 = 1/Fs3;
% Cac moc thoi gian lay mau cua tung chu ky lay mau
t = t_start:T:t_end; 
t1 = t_start:T1:t_end; 
t2 = t_start:T2:t_end;
t3 = t_start:T3:t_end;


x = 2*cos(2*pi*F0*t + phi);
x1 = 2*cos(2*pi*F0*t1 + phi);
x2 = 2*cos(2*pi*F0*t2 + phi);
x3 = 2*cos(2*pi*F0*t3 + phi);

figure(1);
subplot(3,1,1);stem(t1(1:100),x1(1:100));xlabel('Time(s)');ylabel('x1[t]');
subplot(3,1,2);stem(t2(1:100),x2(1:100));xlabel('Time(s)');ylabel('x2[t]');
subplot(3,1,3);stem(t3(1:100),x3(1:100));xlabel('Time(s)');ylabel('x3[t]');
%sound(x1,Fs1);
% sound(x2,Fs2);