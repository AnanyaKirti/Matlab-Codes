clc
clear all
%%
A=input('enter A matrix');
disp(' ' )
[n,n]=size(A);

%%
for j=2:n-1
    for y=j+1:n
        q=(atan( A(j-1,y)/A(j-1,j) ));
        
        C=eye(n);
        
        C(j,j)=cos(q);
        C(y,y)=cos(q);
        C(j,y)=sin(q);
        C(y,j)=-1*sin(q);
        
        A=C*A*C';
        
    end
end

disp(A)

eig (A)
o=24;
f=zeros(n,o);

%%

for j=1:2
    for i=3:n
        f(1,j)=1;
        f(2,j)=j-1;
        f(i,j)=f(i-1,j)*j*( A(i,i) - j) - ( ((A(i-1,i))^2)  *f(i-2,j)*j );
        
    end
end
f
for j=1:o
    for i=1:n
        if f(i,j) >= 0
            f(i,j)=1;
        end
        if f(i,j) <0;
            f(i,j)=-1;
        end
        if f(i,j)==0
            disp('uyf gyufg sduy dfgfs r')
        end
    end
end

f


%%
k=zeros(1,o);

for j=1:o
    w=f(1,o);
    u=w;
    for i=1:n
        w=f(i,j);
        if u~=w
            k(1,j)=k(1,j)+1;
        end
        u=w;
    end
end

k
