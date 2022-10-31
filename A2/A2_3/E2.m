clear all
% A)

N = 1e5;
n = 8;

% p1
p1 = 0.002; 
def1 = rand(n,N) < p1;

% p2
p2 = 0.005;
def2 = rand(n,N) < p2;

% pa
pa = 0.01;
defa = rand(n,N) < pa;

% tabela dos processos todos para todos os brinquedos 8*3 linhas
casosPoss = [def1; def2; defa];

% defeitos totais
errors = sum(casosPoss) == 0;
casosfav = sum(errors);
prob = casosfav/N;
fprintf("A) Prob(B) para n=8 -> %f\n", prob)

% B)

% C)

N = 1e5;
nArr = 2:20;
nprobArr = zeros(1,19);
for n= 2:20
% p1
p1 = 0.002; 
def1 = rand(n,N) < p1;

% p2
p2 = 0.005;
def2 = rand(n,N) < p2;

% pa
pa = 0.01;
defa = rand(n,N) < pa;

% tabela dos processos todos para todos os brinquedos 8*3 linhas
casosPoss = [def1; def2; defa];

% defeitos totais
errors = sum(casosPoss) == 0;
casosfav = sum(errors);
nprobArr(n-1) = casosfav/N;
end
plot(nArr,nprobArr)
title("Probabilidade de b em funçao de n");
xlabel("n");
ylabel("P(B)");
hold on
plot([2 20], [0.9 0.9], "r")

% D)
% caixa de 6 brinquedos