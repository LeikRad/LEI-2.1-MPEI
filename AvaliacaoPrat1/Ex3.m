clear all

% b)
    %CATOR(FIM)
T = [0 0.7/3 0 0.7/3 0 0;
     0.5 0 0.5 0 0.7/2 0;
     0 0.7/3 0 0.7/3 0 0;
     0.5 0 0.5 0 0.7/2 0;
     0 0.7/3 0 0.7/3 0 0;
     0 0.3 0 0.3 0.3 0]

sum(T)
T>=0 & T<=1

% c)

startingletter = randi(5);
state = crawl(T,startingletter,6)

% d)
experiencias = 10^6;

cellArr = cell(1,experiencias);

randomStart = randi([1 5], 1 ,experiencias);
%generate 3 random numbers
%change 3 to 4, because 3 is an absorption state
for n = 1:experiencias
    cellArr{n} = crawl(T,randomStart(n),6);
end

% e)
nTacos = 0;
taco = [3 2 1 4 6];
for n=1:experiencias
    if length(cellArr{n}) == 5
        if cellArr{n} == taco
            nTacos = nTacos +1;
        end
    end
end
probTaco = nTacos/experiencias

% g)

nTPalavras = 0;
lengthTPalavras = 0;
for n=1:experiencias
    palavra = cellArr{n};
    if palavra(1) == 3 
        nTPalavras = nTPalavras + 1;
        lengthTPalavras = lengthTPalavras + (length(palavra) - 1);
    end
end

TamanhoMedio = lengthTPalavras/nTPalavras