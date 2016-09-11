clear all
clc

%% input
%

z=0;
while (z~=1)
    A=input('Enter a martix A= ');
    b=input('Enter a column martix b= ');
    [m,n]=size(A);
    [l,k]=size(b);
    if (n==l)
        z=1;
    else
        z=0;
        disp(' ')
        disp('Matrix dimesnsions dont match ')
        disp('Re-enter the matrix ')
        disp(' ')
    end
end

X=input('Enter the initial guess ');
N=input('Enter the number of iterations ');
Tol=input('Enter the Tolerence ');
W=input('Enter the Omega ');
M=N;
%% iterating
% SOR

x=X;
z=0;
l=0;
k=0;
while z==0
    for i=1:n
        sum=0;
        for j=1:i
            if (j~=i)
                sum=sum + A(i,j)*x(j,1);
            end
        end
        
        for j=i:n
            sum=sum + A(i,j)*X(j,1);
        end
        
        x(i)=X(i) + W * ( b(i) -sum )/ A(i,i);
        
    end
    
    if( norm(x-X) < Tol )
        z=1;
        l=k-1;
        break;
    end
    
    X=x;
    
    if k == N
        if z==0
            N=N+1;
        end
    end
    k=k+1;
    
end
disp('Answer from SOR Method')
disp(x)
if k <M
    disp(' the number of iterations')
    disp(l)
else
    disp('Number of iterations was increased to')
    disp(N)
end
