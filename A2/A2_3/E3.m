clear all
% A)
Sx = 0:8;
N = 1e05;
n = 8;
SxProbArr =zeros(1,9);
for i=0:8
    % p1
    p1 = 0.002; 
    def1 = rand(n,N) < p1;

    % p2
    p2 = 0.005;
    def2 = rand(n,N) < p2;

    % pa
    pa = 0.01;
    defa = rand(n,N) < pa;

    casosPoss = [def1; def2; defa];

    % defeitos totais
    errors = sum(casosPoss) == i;
    casosfav = sum(errors);
    SxProbArr(i+1) = casosfav/N;
end

stem(Sx,SxProbArr)

% B)

Pxgt2 = 1 - SxProbArr(1) - SxProbArr(2);
fprintf("B) %f\n", Pxgt2)

% C)

E = sum(SxProbArr.*Sx);
Var = var(Sx, SxProbArr);
Dp = sqrt(Var); 

fprintf("B) Media= %f \n   Variancia= %f \n   Desvio padrao= %f\n", E,Var,Dp)

% A)
Sx = 0:16;
N = 1e05;
n = 16;
SxProbArr =zeros(1,17);
for i=0:16
    % p1
    p1 = 0.002; 
    def1 = rand(n,N) < p1;

    % p2
    p2 = 0.005;
    def2 = rand(n,N) < p2;

    % pa
    pa = 0.01;
    defa = rand(n,N) < pa;

    casosPoss = [def1; def2; defa];

    % defeitos totais
    errors = sum(casosPoss) == i;
    casosfav = sum(errors);
    SxProbArr(i+1) = casosfav/N;
end
figure(2)
stem(Sx,SxProbArr)

Pxgt2 = 1 - SxProbArr(1) - SxProbArr(2);
fprintf("C)\n   %f\n", Pxgt2)

E = sum(SxProbArr.*Sx);
Var = var(Sx, SxProbArr);
Dp = sqrt(Var); 

fprintf("   Media= %f \n   Variancia= %f \n   Desvio padrao= %f\n", E,Var,Dp)