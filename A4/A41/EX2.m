clear all
fprintf("string2hash 'djb2'")

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

fprintf("string2hash 'sdbm'")

tic
alfabeto = ['a':'z' 'A':'Z' '0':'9'];
N = 1e5;
words = GenerateStrings(N,6,20,alfabeto);
T = 5e5;
tabela = zeros(1,T);
hashArr = zeros(1,N);
atr = zeros(1,T);
for i=1:N
    hashkey = string2hash(words{i},'sdbm');
    hashkey = rem(hashkey,T)+1;
    hashArr(i) = hashkey;
    atr(hashkey) = atr(hashkey) + 1;
end

atr2 = sum(atr(atr>1));
atr2/T * 100
toc

fprintf("hashstring")

tic
alfabeto = ['a':'z' 'A':'Z' '0':'9'];
N = 1e5;
words = GenerateStrings(N,6,20,alfabeto);
T = 5e5;
tabela = zeros(1,T);
hashArr = zeros(1,N);
atr = zeros(1,T);
for i=1:N
    hashkey = hashstring(words{i},T);
    hashkey = rem(hashkey,T)+1;
    hashArr(i) = hashkey;
    atr(hashkey) = atr(hashkey) + 1;
end

atr2 = sum(atr(atr>1));
atr2/T * 100
toc

fprintf("DJB31MA")
tic
alfabeto = ['a':'z' 'A':'Z' '0':'9'];
N = 1e5;
words = GenerateStrings(N,6,20,alfabeto);
T = 5e5;
tabela = zeros(1,T);
hashArr = zeros(1,N);
atr = zeros(1,T);
for i=1:N
    hashkey = DJB31MA(words{i},91293129);
    hashkey = rem(hashkey,T)+1;
    hashArr(i) = hashkey;
    atr(hashkey) = atr(hashkey) + 1;
end

atr2 = sum(atr(atr>1));
atr2/T * 100
toc