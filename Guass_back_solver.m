clear all
clc
A=input ('Enter a coef matrix A' );
B=input ('Enter the constant matrix B ');

%%
[m,n]=size(A);
C=[A B];

for i= 1:n
    C(i,:)=C(i,:);
    for j=i+1:n
        C(j,:)=C(j,:)-C(i,:)*C(j,i)/C(i,i);
    end
end

 [ x ] = Back_sub( C )