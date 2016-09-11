clear all
clc
%%
A=input('Enter the matrix');
[m,n]=size(A);
tol=input('Enter the tolerence');

d=eye(n);
k=2*tol;
%%
while (k>tol )
    
    temp=abs(A(2,1));
    i=2;
    j=1;
    for q=1:n
        for w=1:n
            if (w~=q)
                if(abs(A(q,w)) > temp)
                    temp=abs(A(q,w));
                    i=q;
                    j=w;
                end
            end
        end
    end
    i
    j
    
    %%
    
    q=1/2*(atan ( 2*A(i,j)/ ( A(i,i) - A(j,j) )));
    R=eye(n);
    R(j,j)=cos(q);
    R(i,i)=cos(q);
    R(i,j)=sin(q);
    R(j,i)=-sin(q);
    d=d*R';
    
    
    A=R*A*R';
    
    k=0;
    for i=1:n
        for j=1:n
            if j~=i
                k=k+abs(A(i,j));
            end
        end
    end
    if k<tol
        break
    end
    A
    q
    
    
end

for i=1:n
    x(i,1)=A(i,i);
end
disp('*********************')
disp('Eigen Values are')
disp(x)
disp('*********************')
disp('Eigen Vectors are')
disp(d)
disp('*********************')

