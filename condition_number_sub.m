function [ c ] = condition_number_sub( A )

[m,n]=size(A);

%% inverse

O=eye(n);
C=[A O];

[ C ] = Guass_Jordan_sub( C );

S=C(:,n+1:2*n);

%% condition number

disp('Condition number for A :-')
c=norm(A)*norm(S);



end

