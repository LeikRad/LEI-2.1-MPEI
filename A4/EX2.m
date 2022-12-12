clear all
tic
alfabeto = ['a':'z' 'A':'Z' '0':'9'];
N = 1e5;
words = GenerateStrings(N,6,20,alfabeto);
T = 5e5;
tabela = zeros(1,T);
hashArr = zeros(1,N);
atr = zeros(1,T);
for i=1:N
    hashkey = string2hash(words{i});
    hashkey = rem(hashkey,T)+1;
    hashArr(i) = hashkey;
    atr(hashkey) = atr(hashkey) + 1;
end

atr2 = sum(atr(atr>1));
atr2/T * 100
toc