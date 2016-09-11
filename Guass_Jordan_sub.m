function [ C ] = Guass_Jordan_sub( C )
%%
[n,m]=size(C);


%%

for i=1:n
    C(i,:)=C(i,:)/C(i,i);
    for j=1:n
        if(j~=i)
            C(j,:)=C(j,:)-C(i,:)*C(j,i);
        end
    end
    
end


end

