clear all
%A)
fives = ones(1,90)*5;
fifties = ones(1,9)*50;
Sx = [fives fifties 100];

%b)
px = [90 9 1]/100;

%c)

pxcSum = cumsum(px);

stairs([0 unique(Sx) 105], [0 pxcSum 1])
xlim([0 105])
ylim([0 1.1])