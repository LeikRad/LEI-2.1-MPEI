clear all

% A)

PM = 0.5; % probabilidade de ser masculino
N = 1e05; % numero de experiencias
n = 2; % numero de filhos
fam = rand(n,N) < PM; % criaçao das familias
nM = sum(fam) >= 1; % numero de familias com 1 ou mais filhos
cfav = sum(nM); % casos favoraveis 
pF = cfav/N; % probabilidade filho
fprintf('A) A probabilidade é %f\n', pF)

% B) Determine o valor teórico do acontecimento da 
%    alínea anterior e compare-o com a estimativa obtida
%    por simulação. Os valores são iguais? Porquê?
%  
%    Casos favoraveis sao: FM MF MM
%    Casos totais sao: FF FM MF MM
%    Logo a probabilidade será 3/4.
fprintf('B) A probabilidade teórica é 3/4.\n')

% C) 

PM = 0.5;
N = 1e05; % numero de experiencias
n = 2; % numero de filhos
fam = rand(n,N) < PM;

nMA = sum(fam) >= 1;
cfavA = sum(nMA);

nMB = sum(fam) == 2;
cfavBA = sum(nMB);

pF = cfavBA/cfavA;

fprintf('C) A probabilidade é %f\n', pF)

% D)

PM = 0.5;
N = 1e05; % numero de experiencias
n = 2; % numero de filhos
fam = rand(n,N) < PM;

nMA = fam(1,:) == 1;
cfavA = sum(nMA);

nMB = sum(fam) == 2;
cfavBA = sum(nMB);

pF = cfavBA/cfavA;
fprintf('D) A probabilidade é %f\n', pF)

% E)

PM = 0.5;
N = 1e05; % numero de experiencias
n = 5; % numero de filhos
fam = rand(n,N) < PM;

nMA = sum(fam) >= 1;
cfavA = sum(nMA);

nMB = sum(fam) == 2;
cfavBA = sum(nMB);

pF = cfavBA/cfavA;
fprintf('E) A probabilidade é %f\n', pF)

% F)

PM = 0.5;
N = 1e05; % numero de experiencias
n = 5; % numero de filhos
fam = rand(n,N) < PM;

nMA = sum(fam) >= 1;
cfavA = sum(nMA);

nMB = sum(fam) >= 2;
cfavBA = sum(nMB);

pF = cfavBA/cfavA;
fprintf('F) A probabilidade é %f\n', pF)
