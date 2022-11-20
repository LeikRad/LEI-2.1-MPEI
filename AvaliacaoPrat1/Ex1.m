N = 4; 
T = [0.1 0.25 0.2 0.25;
     0.3 0.25 0.2 0.25;
     0.3 0.25 0.4 0.25;
     0.3 0.25 0.2 0.25];
% verificar estocididade
sum(T)
T>=0 & T<=1

v = ones(1,N)'*1/N;

v7 = T^6*v
% d

M = [T - eye(4,4); ones(1,4)] ;
b = [zeros(4,1); 1];

u = M\b


