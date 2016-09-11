clear all
clc
%%
A=input('Enter the matrix');
[m,n]=size(A);
x=input('Enter the initial guess matrix');
N=input('Ehter the number of itertations');
tol=input('Enter the tolerence');


%%
oldmax=0;
for i=1:N
    Y= A*x;
    max=Y(1,1);
    
    for j=1:n
        if (Y(j,1))>max
            max=Y(j,1);
        end
    end
    
    for j=1:n
        Y(j,1)=Y(j,1)/ max;
    end
    if (abs(oldmax- max) <tol)
        break;
    end
    oldmax=max;
    x=Y;
    if (i==N)
        disp('Max number of iterations reacjed')
    end
end
disp('Eigen Value=')
disp(max)

disp('Eigen Vector=')
disp(Y)
