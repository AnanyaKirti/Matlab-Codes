function [ l ] = LLt_chelostsky( A )
    [m,n]=size(A);
    l=zeros(n);
    l(1,1)=sqrt(A(1,1));
    for j=1:n
        for i=1+j:n
            c=0;
            for k=1:j-1
               c=c+(l(j,k)*l(i,k));
            end
            l(i,j)=(A(i,j)-c)/l(j,j);
        d=0;
        for b=1:i-1
            d=d+l(i,b)*l(i,b);
        end
        l(i,i)=sqrt(A(i,i)-d);
        end
    end
end

