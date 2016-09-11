clear all
clc
%%
% % % A=input('Enter the matrix which needs to be checked')
% A=[1 1 -1; 1 7 2 ; 0 4 2 ; 2 8 1 ]
A=[1 1 -1 ; 1 0 2 ; 0 1 2 ; 2 3 1 ]
[m,n]=size(A);
C=A;
[ C ] = Guass_subelimination( C )
[ C ] = remove_zeros_rows( C );
[m,n]=size(C);
b=zeros(m,1);
C=[C b];

[ x ] = backsub_22( C )

[m,n]=size(x);
l=0;
for i=1:m
    if (x(i)~=0)
        l=l+1;
    end
end

if(l==0)
    disp('Linearly Independent')
else 
    disp('Linearly Dependent' )
end