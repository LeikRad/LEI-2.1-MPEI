% setup
T = [0.7 0.8; 0.3 0.2];
% A)
% verificar se está bem
sum(T);
T>=0 & T<=1;

% vetor de estado

v = [1; 0]; % inicial

v1 = T * v; % sexta feira

vf = T * v1; % proxima quarta feira
fprintf("A) Prob = %f\n", vf(1))

% B)
v = [0; 1]; 

vf = (T^2) * v; % proxima quarta feira
fprintf("B) Prob = %f\n", vf(1))

% C)

v = [1; 0];

vf = (T^(15*2-1)) * v; % 15*2 todas as aulas - 1 (aula inicial)

fprintf("C) Prob = %f\n", vf(1))

% D)
vD = [0.85; 0.15];
probArr = zeros(1,30);
days = 1:30;
for i=1:30
    probArr(i) = vD(2);
    vD = T * vD;
end
plot(days, probArr)