clear all

% A)

n = 2; % n de lanc
m = 6; % n max de lanc
N = 1e5;
lanc = randi(m,n,N);

%proposiçao A

nMA = sum(lanc) == 9;
cfavA = sum(nMA);
pA = cfavA/N;

%proposiçao B
 
nMB = rem(lanc(2,:), 2) == 0;
cfavB = sum(nMB);
pB = cfavB/N;

%proposiçao C

nMC = [];
for i = 1:N
    lancCol = lanc(:,i);
    if ismember(5,lancCol)
        nMC = [nMC 1];
    end
end
cfavC = length(nMC);
pC = cfavC/N;

%proposiçao D

nMD = [];
for i = 1:N
    lancCol = lanc(:,i);
    if ismember(1,lancCol)
        nMD = [nMD 0];
    else
        nMD = [nMD 1];
    end
end
cfavD = sum(nMD);
pD = cfavD/N;
fprintf("A) Proposiçao A = %.6f \n   Proposiçao B = %.6f \n   Proposiçao C = %.6f \n   Proposiçao D = %.6f\n",pA,pB,pC,pD)

% B)
% Para os acontecimentos serem independentes a condição seguinte tem que se
% verificar P(A∩B) = P(A) * P(B)
% Casos favoráveis para o acontecimento A:
% (3,6);(4,5);(5,4);(6,3)
%
% Casos favoráveis = 4
% Probabilidade de A = 4/36 -> 1/9
%
% Casos favoráveis para o acontecimento B:
% (1,2);(2,2);(3,2);(4,2);(5,2);(6,2)
% (1,4);(2,4);(3,4);(4,4);(5,4);(6,4)
% (1,6);(2,6);(3,6);(4,6);(5,6);(6,6)
%
% Casos favoráveis = 18
% Probabilidade de B = 18/36 -> 1/2
%
% Casos favoráveis para o acontecimento A∩B:
% (3,6);(5,4)
%
% Probabilidade de A∩B = 2/36 -> 1/18
%
% Logo a condição P(A∩B) = P(A) * P(B) verifica-se
% 1/9*1/2 = 1/18


% C)
% Para os acontecimentos serem independentes a condição seguinte tem que se
% verificar P(C∩D) = P(C) * P(D)
% Casos favoráveis para o acontecimento C:
% (1,5);(2,5);(3,5);(4,5);(6,5)
% (5,1);(5,2);(5,3);(5,4);(5,6)
% (5,5)
%
% Casos favoráveis = 11
% Probabilidade de C = 11/36
%
% Casos favoráveis para o acontecimento D:
% Todos exceto os casos seguintes
% (1,2);(1,3);(1,4);(1,5);(1,6)
% (2,1);(3,1);(4,1);(5,1);(6,1)
% (1,1)
%
% Casos favoráveis = 25
% Probabilidade de D = 25/36
%
% Casos favoráveis para o acontecimento C∩D:
% (2,5);(3,5);(4,5);(6,5)
% (5,2);(5,3);(5,4);(5,6)
% (5,5)
%
% Probabilidade de C∩D = 9/36
%
% Logo a condição P(C∩D) = P(C) * P(D) não se verifica
% 11/36 * 25/36 != 9/36
