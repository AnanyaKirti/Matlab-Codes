clear all
clc
format long
%%
disp('*******************************************')
A1=input('Enter the matrix');
B1=input('Enter the column matrix');
disp('*******************************************')
C=[A1 B1];
[m,n]=size(C);
count=0;

%%
k=0;
for i= 1:m
    for j=i+1:m
        C(j,:)=C(j,:)-C(i,:)*C(j,i)/C(i,i);
    end
    if(k==0)
        if(C(i,i))==0
            fprintf('We need partial Pivoting\n')
            k=k+1;
        end
    end
end

%%
C=[A1 B1];

if(k==0)
    [ C ] = Guass_subelimination( C );
    fprintf('We dont need pivoting\n')
    [ x ] = Back_sub( C );
end
if(k==1)
    A=C;
    [ a,count,y ] = row_pivoting_sub( A );
    C=a;
    [ C ] = Guass_subelimination( C );
    [ x ] = Back_sub( C );
end

%%
disp('*******************************************')
disp('The solution is=')
disp(x)
disp('*******************************************')
disp('Number of row-exchanges used=')
disp(count)
if(k==1)
    disp('*******************************************')
    disp(y)
end
disp('*******************************************')