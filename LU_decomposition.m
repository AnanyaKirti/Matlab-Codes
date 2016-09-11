function [ U,L ] = LU_decomposition( A,n )
U=A;
L=eye(n);
Y=A;
for i= 1:n-1
    for j=i+1:n
        U(j,:)=U(j,:)-U(i,:)*U(j,i)/U(i,i);
        L(j,i)=Y(j,i)/Y(i,i);
        Y=U;
    end
end