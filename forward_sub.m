function [ y ] = forward_sub( C )

%%
[n,m]=size(C);
y=zeros(n,1);
y(1)=C(1,n+1)/C(1,1);

for i=2:n
      sum=0;
      for j=1:i-1;
        sum=C(i,j)*y(j,1)+sum;
      end
  y(i,1)=(C(i,n+1)-sum)/C(i,i);
end


end