clear all
clc

%%

% a=('Enter the column Vector 1');
% b=('Enter the column Vector 2');
% c=('Enter the column Vector 3');

a=[1; 2; 1; -1];
b=[1; 0; 2; -3];
c=[1; 1; 0; -2];
d=[2; 1; 5; -5];
C=[a b c d];

%%

[ C ] = Guass_subelimination( C );
[ C ] = remove_zeros_rows( C );

[ x ] = backsub_22( C )