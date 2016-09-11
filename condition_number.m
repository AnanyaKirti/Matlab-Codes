clear all
clc
%%
A=input('Enter the coefficient matrix');
b=input('Enter the constant matrix');
[m,n]=size(A);

%% inverse

O=eye(n);
C=[A O];

[ C ] = Guass_Jordan_sub( C );

S=C(:,n+1:2*n);

%% condition number

disp('My answer :-')
cond=norm(A)*norm(S);
disp(cond)
disp('Answer using inbuilt function :-')
c=COND(A);
disp(c)

%%