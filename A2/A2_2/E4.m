clear all
% A)
p = 0.3;
Sx = 0:5;
N = 1e5;
pxArr = zeros(1,6);
n = 5;
for i = 0:5
    resultados = rand(n,N) < p;
    sucessos= sum(resultados)==i; % n de peças defeituosas
    probSimulacao = sum(sucessos)/N;
    pxArr(i+1) = probSimulacao;
end
figure(1)
stem(Sx,pxArr),title("Função massa de probabilidade"),xlabel("x"),ylabel("F(x)");

fprintf('A) i. f(0)= %f f(1)= %f f(2)= %f f(3)= %f f(4)= %f f(5)= %f \n', pxArr(1), pxArr(2), pxArr(3), pxArr(4), pxArr(5), pxArr(6))

figure(2)
cumSumProb = cumsum(pxArr);
stairs([-1 Sx 6],[0 cumSumProb cumSumProb(6)]),title("Função distribuição acumulada de probabilidade"),xlabel("x"),ylabel("F(x)");
ylim([0 1.1])

fprintf(' iii. P(x<=2) = %f\n', pxArr(1)+pxArr(2)+pxArr(3))

% B)
% i.

pD = 0.3; %probabilidade de defeito
k = 0:5; %numero de peças defeituosas
n = 5; %numero de peças
N = 1e5; %numero de experiencias

disp("Alinea bi)");

PA(1) = nchoosek(n,0)*pD^0*(1-pD)^(n-0);

for i = 2:length(k)
    PA(i) = PA(i-1) + nchoosek(n,i-1)*pD^(i-1)*(1-pD)^(n-(i-1));

end

figure(3);
stairs(k,PA);
title("Função distribuida acumulada (Analitico)");
xlabel("x");
ylabel("F(x)");

% ii.

fprintf("Probabilidade de ii) %f \n", PA(3));
