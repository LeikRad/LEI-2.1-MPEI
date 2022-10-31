% setup
T = [1/3 5/20 0; 1/3 11/20 1/2; 1/3 4/20 1/2];
% A)
% verificar se está bem
sum(T)
T>=0 & T<=1

% B)

v = [60; 15; 15]/90

% C)

vF = T^30 * v;

alunosC = vF*90

% D)
        
v = [30; 30; 30]/90;

vF = T^30 * v;

alunosD = vF*90