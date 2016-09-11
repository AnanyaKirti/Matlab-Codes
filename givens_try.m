clc
clear All
%%
A=input('enter A mAtrix');
v=input('enter the initiAl vAlue of lAmbdA');
b=input('enter the finAl vAlue of lAmbdA');
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
%%

t=zeros(21,1);
f=zeros(n+1,1);
g=zeros(n,1)
k=1;

for y=v:b
    f(1,k)=1;
    f(2,k)=(A(1,1)-y);
    if f(2,k)>=0
        f(2,k)=1;
    else
        f(2,k)=-1;
    end
    for i=3:n+1
        f(i,k)=f(i-1,k)*(A(i-1,i-1)-y)-A(i-2,i-1)*A(i-2,i-1)*f(i-2,k);
        if f(i,k)>=0
            f(i,k)=1;
        else
            f(i,k)=-1;
        end
    end
    k=k+1;
end

f
for y=1:21
    h=0;
    for p=1:4
        if abs(f(p,y)-f(p+1,y))>0
            h=h+1;
        end
        t(y,1)=h;
    end
end
t
l=1;
for y=1:20
    h=0;
    if abs(t(y,1)-t(y+1,1))>0
        g(l,1)=y;
        l=l+1;
    end
end
g
for o=1:n
    if (g(o,1))~=0
        j=v+g(o,1);
        e=j+1;
        j
        e
    end
end



