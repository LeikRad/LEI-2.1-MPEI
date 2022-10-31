clear all
% A) 
Sx = [0,1,2,3,4];
N = 1e5;
p = 0.5;
n = 4;
pxArr = zeros(1,5);
pxArrTeorico = zeros(1,5);
for i = 0:4
    lancamentos = rand(n,N) > p;
    sucessos= sum(lancamentos)==i;
    probSimulacao = sum(sucessos)/N;
    pxArr(i+1) = probSimulacao;
    pxArrTeorico(i+1) = nchoosek(n,i)*p^i*(1-p)^(n-i); % nchoosek(n,k)= n!/(n-k)!/k!
end

fprintf('a) f(0)= %f f(1)= %f f(2)= %f f(3)= %f f(4)= %f \n', pxArr(1), pxArr(2), pxArr(3), pxArr(4), pxArr(5))

% B)

E = sum(pxArr.*Sx);
Var = var(Sx, pxArr);
dp = sqrt(Var);

fprintf('b) Media= %f \n   Variancia= %f \n   Desvio padrao= %f\n', E,Var,dp)

% C)
fprintf('c) Distribuição binomial de p = 0.5 e n = 4 \n')

% D)
fprintf('d) f(0)= %f f(1)= %f f(2)= %f f(3)= %f f(4)= %f \n', pxArrTeorico(1), pxArrTeorico(2), pxArrTeorico(3), pxArrTeorico(4), pxArrTeorico(5))

% E)

ETeorico = sum(pxArrTeorico.*Sx);
VarTeorico = var(Sx, pxArrTeorico);
dpTeorico = sqrt(VarTeorico);

fprintf('e) Media= %f \n   Variancia= %f \n   Desvio padrao= %f\n', ETeorico,VarTeorico,dpTeorico)

% F) situaçao A = i; situaçao B = ii; situaçao C = iii

probA = sum(pxArrTeorico(:,3:5));
probB = sum(pxArrTeorico(:,1:2));
probC = sum(pxArrTeorico(:,2:4));

fprintf('f) i = %.4f \n   ii = %.4f \n   iii = %.4f\n', probA,probB,probC)

