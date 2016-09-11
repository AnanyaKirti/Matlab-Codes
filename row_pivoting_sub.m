function [ a,count,y ] = row_pivoting_sub( A )
%%
a=A;
[m,n]=size(a);
count=0;
z=0;
y=zeros(n,2);
%%
for i=1:m
    temp=abs(a(i,i));
    rtemp=a(i,:);
    for j=i:m
        if( abs(a(j,i) ) > temp)
            temp=abs(a(j,i));
            rtemp=a(j,:);
            a(j,:)=a(i,:);
            a(i,:)=rtemp;
            if(z==0)
                count=count+1;
                z=z+1;
                p=j;
            end
        end
    end
    if(z==1)
        y(i,1)=i;
        y(i,2)=p;
    end
    z=0;
end



end

