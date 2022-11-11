% Prob0
n = -10:10;                     % sinh vecto thoi gian roi rac
u = [zeros(1,10),1,ones(1,10)];   % sinh u[n] co cung do dai voi n
up1 = [u(2:end),1];             % sinh u[n+1] la phien ban som (dich trai) 1 mau cua u[n]
um5 = [zeros(1,5),u(1:end-5)];  % sinh u[n-5] la phien ban tre (dich phai) 5 mau cua u[n]
x1 = up1 - um5;                 % x1[n]
% ve do thi u, up1, um5 va x1 tren cung 1 figure
figure(1);
subplot(4,2,1);stem(n,u,'fill');xlabel('Sample index n');ylabel('u[n]');
subplot(4,2,2);stem(n,up1,'fill');xlabel('Sample index n');ylabel('u[n+1]');
subplot(4,2,3);stem(n,um5,'fill');xlabel('Sample index n');ylabel('u[n-5]');
subplot(4,2,4);stem(n,x1,'fill');xlabel('Sample index n');ylabel('x1[n]');

u0n = flip(u);                  % sinh u[-n] la phien ban dao thoi gian cua u[n]
u2n = [ones(1,2),u0n(1:end-2)]; % sinh u[2-n]=u[-(n-2)] la phien ban tre (dich phai) 2 mau cua u[-n]
x2 = n.*u2n;                    % nhan 2 vector n va u[2-n] point-by-point
x = x1.*x2;                     % nhan 2 vector x1 va x2 point-by-point
% ve do thi u0n, u2n, x2, x tren cung 1 figure
subplot(4,2,5);stem(n,u0n,'fill');xlabel('Sample index n');ylabel('u[-n]');
subplot(4,2,6);stem(n,u2n,'fill');xlabel('Sample index n');ylabel('u[2-n]=u[-(n-2)]');
subplot(4,2,7);stem(n,x2,'fill');xlabel('Sample index n');ylabel('x2[n]');
subplot(4,2,8);stem(n,x,'fill');xlabel('Sample index n');ylabel('x[n]');