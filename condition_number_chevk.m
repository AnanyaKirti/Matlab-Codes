clear all
clc
%%
A=input('Enter the coefficient matrix');
b=input('Enter the constant matrix');
[m,n]=size(A);
%%


[ c ] = condition_number_sub( A );
c1=c;


%% property 1
if (c1 > 1)
    disp ('Cond(A) >= 1')
end

%% property 2

B=4*A
[ c ] = condition_number_sub( B );
c2=c;

if (c1==c2 )
    
    disp ('Cond(A)==COND(4*A)')
end

%% property 3

if 