clear all
clc
A=input ('Enter a coef matrix A' );
[n,m]=size(A);

%%
if(m/n ~=1)
    n=min(m,n);
end

%%

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

%% 
