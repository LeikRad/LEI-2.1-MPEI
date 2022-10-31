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
errors = sum(casosPoss) >= 1;
casosfav = sum(errors);
prob = casosfav/N;
fprintf("A) Prob(A) para n=8 -> %f\n", prob)

% B) 

defa = rand(n,N) < pa;
errors = sum(sum(casosPoss));
E = errors/N;
fprintf("B) Media -> %f\n", E)
