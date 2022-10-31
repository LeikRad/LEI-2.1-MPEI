clear all
% A)

N= 1e5; 
% prog A
pA = 0.01; 
nA = 20; 
progA = rand(nA,N) > 1 - pA;

% prog B
pB = 0.05;
nB = 30;
progB = rand(nB,N) > 1 - pB;

% prog C
pC = 0.001;
nC = 50;
progC = rand(nC,N) > 1 - pC;

% tabela dos progs todos
progs = [progA; progB; progC];

% erros Totais
errors = sum(progs);
cfavA = sum(errors);

% erros do Carlos
errorsCarl = sum(progC);
cfavAB = sum(errorsCarl);

% erros do Bruno
errorsBruno = sum(progB);
cfavAC = sum(errorsBruno);

% erro do Andre
errorsAndre = sum(progA);
cfavAD = sum(errorsAndre);

probAndreafterError = cfavAD/cfavA
probBrunoafterError = cfavAC/cfavA
probCarlosafterError = cfavAB/cfavA

fprintf("A) A probabilidade do programa ser do Carlos é %.6f.\n", probCarlosafterError)
fprintf("B) André: %.6f; Bruno: %.6f; Carlos: %.6f \n   Logo o mais provável o Bruno.\n", probAndreafterError,probBrunoafterError,probCarlosafterError)