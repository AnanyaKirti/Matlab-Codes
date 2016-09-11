clear all
clc
A=input ('Enter a coef matrix A' );
p=input ('Enter a column matrix p' );
[n,m]=size(A);
%% Check 
% square matrix + choose min of m, n
if(m/n ~=1)
    n=min(m,n);
end

%% Running the actual code
% also checking singularity 

[ m ] = principal_minor( A );
k= min (abs(m));

if (k==0)
    fprintf('\nThe LU decomposition is not posssible \n')
else
    if(det(A)==0)
        disp('LU decomposition is not unique ')
    end
    [ U,L ] = LU_decomposition( A,n );
end

%% Back Sub
% beware of variables, I've made aug matrix

C=[L p];
[ y ] = forward_sub( C );

%% forward Sub
% beware of variable change
% aug matrix

C=[U y];
[ x ] = Back_sub( C );

%% Disp of the glorious maganimous amazing ans

x