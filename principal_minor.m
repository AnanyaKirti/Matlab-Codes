function [ m ] = principal_minor( A )
%%
[n,n]=size(A);
m=zeros(n-1,1);

%%
for i=1:n-1
    C=zeros(n);
    C=A([1:i],[1:i]);
    m(i)=det(C);

end
