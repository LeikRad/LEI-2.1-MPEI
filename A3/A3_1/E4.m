% [ A->A B->A C->A D->A;
%   A->B B->B C->B D->B;
%   A->C B->C C->C D->C;
%   A->D B->D C->D D->D]
p = 0.4;
q = 0.6;
T = [p^2 0 0 q^2
    (1-p)^2 0 0 q*(1-q)
    p*(1-p) 0 0 q*(1-q)
    p*(1-p) 1 1 (1-q)^2];

% verificar se está bem
sum(T)
T>=0 & T<=1

v = [1 0 0 0]';
%B
T5 = T^5
v5 = (T^5)*v
v10 = (T^10)*v
v100 = (T^100)*v;
v200 = (T^200)*v;

%C
M = [T - eye(4,4); ones(1,4)] ;
b = [zeros(4,1); 1];

u = M\b