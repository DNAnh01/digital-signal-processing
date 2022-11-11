clear All;
close All;
f = [5,6,7,8,1,2,3,12,3,1,2,1,3,3,3,12,3,4,5,1,3,4,6,5];
%fprintf('digit: %d\n',f(f>5))
n =sum(f<6);
%m =length(find(f<4));
%fprintf('n =  %d',n);
fprintf('n =  %d\n',n);
%fprintf(', %d',(find(f<3)))