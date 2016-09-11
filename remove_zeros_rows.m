function [ C ] = remove_zeros_rows( C )
A=C;
[m,n]=size(C);
k=0;
for i=1:m
    l=0;
    for j=1:n
        if( A(i,j)~=0 )
            if( A(i,j)~='NaN' )
                if( A(i,j)~='Inf' )
                    l=l+1;
                end
            end        
        end
    end
    
    if(l~=0)
        k=k+1;
    end
end


C=A([1:k],:);
end
