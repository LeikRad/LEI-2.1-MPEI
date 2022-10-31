clear all
% 9 A)
N = 1e6;
miu = 9;
sigma = 2;
X = randn(1,N)* sigma + miu;
figure("Name", "gaussian distro")
histogram(X,100)
X = 3*X - 17;
figure("Name", "gaussian distro?")
histogram(X,100)

casesA = sum(12 < X & X < 16);
pA = casesA/N;
fprintf("A) um aluno do curso ter uma classificação entre 12 e 16: %f\n", pA)

% B )

casesB = sum(10 < X & X < 18);
pB = casesB/N;
fprintf("B) os alunos terem classificações entre 10 e 18: %f\n", pB)

% C )

casesC = sum(10 < X);
pC = casesC/N;
fprintf("C) um aluno passar (ter classificação maior ou igual a 10): %f\n", pC)

% D )
pAteorico = normcdf(16, 14, 2) - normcdf(12, 14, 2);
pBteorico = normcdf(18, 14, 2) - normcdf(10, 14, 2);
pCteorico = normcdf(14, 2) - normcdf(10, 14, 2);
fprintf("C) A: P = %f\n   B:  P = %f\n   C: P = %f", pAteorico, pBteorico, pCteorico)
