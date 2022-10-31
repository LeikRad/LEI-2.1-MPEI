%% Codigo 1 - segunda versao
N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 2; %numero de caras
n = 20; %numero de lancamentos
S = 0:n1;


for J = 0:n1
    S(J+1)=probCalc(p,n1,J,N);
end
stem(S)