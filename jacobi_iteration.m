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
x=zeros(l,1);
N=input('Enter the nu,ber of iterations ');
Tol=input('Enter the Tolerence ');

%% iterating
%

z=0;
l=0;
for k=1:N
    if(z==0)
        for i=1:n
            sum=0;
            for j=1:n
                if (j~=i)
                    sum=sum + A(i,j)*X(j,1);
                end
            end
            x(i)= ( b(i) -sum )/ A(i,i);
            
        end
        
        if( norm(x-X) < Tol )
            z=1;
            l=k;
        end
        
        X=x;
    end
end

x
l