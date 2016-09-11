function [ x ] = backsub_22( C )
[m,n]=size(C);
b=C(:,n);
U=C(:,[1:n-1]);
n = length( b );
x = zeros( n, 1 );
for i=n:-1:1
   x(i) = ( b(i) - U(i, :)*x )/U(i, i);
end


end

