function [ C ] = Guass_subelimination( C )
%%
[n,m]=size(C);

for i= 1:n
    for j=i+1:n
        C(j,:)=C(j,:)-C(i,:)/C(i,i)*C(j,i);
    end
end

end