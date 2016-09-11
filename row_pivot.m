clear all
clc
a=input('Enter a square matrix')
[m,n]=size(a);

%%

for i=1:n
    temp=abs(a(i,i));
    rtemp=a(i,:);
    for j=i:n
        if( abs(a(j,i) ) > temp)
            temp=abs(a(j,i));
            rtemp=a(j,:);
            a(j,:)=a(i,:);
            a(i,:)=rtemp;
        end
    end
end
a