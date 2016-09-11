clear all
clc
A=input('Enter a square matrix A');
[m,n]=size(A);

%% checkicking positive definite
%  using x*a*xt 
if (m==n)
    for i=1:n
        B=A;
        X=i*ones(n,1);
        Y=transpose(X);
        k(i)=Y*B*X;
        
    end
end
%% if any one of the above are zero, then it 
%   ++o to stop  the code from running
z=min(abs(k));
o=0;

if(z==0)
    disp('Its not a definite positive matrix')
    o=o+1;
end

%% checking symetry of matrix\
% if not symetric, then ++o

Q=transpose(A);
if(Q~=A)
    disp('Its not a Symetric matrix')
    o=o+1;
end

%% if all conditins satisfy
% run the code using subroutine

if(o==0)
    [ l ] = LLt_chelostsky( A ); %% subroutine
    lt=transpose(l);
    disp('A=')
    disp(A)
    disp('l=')
    disp(l)
    disp('lt=')
    disp(lt)
    disp('By cholestky factorisation, ')
    disp('l*lt=')
    disp(l*lt)
    % tada!
else
    disp('Not a cholestky')
end

%% 