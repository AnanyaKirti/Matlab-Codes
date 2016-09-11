function [ x ] = Back_sub( C )


%%
[n,m]=size(C);
x=zeros(n-1,1);
x(n)=C(n,m)/C(n,n);

for i=n:-1:2
      sum=0;
      for j=n-1:-1:1;
        sum=C(i-1,j+1)*x(j+1,1)+sum;
      end
  x(i-1,1)=(C(i-1,n+1)-sum)/C(i-1,i-1);
end



end