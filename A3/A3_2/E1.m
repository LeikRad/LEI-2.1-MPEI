clear all

experiencias = 10000
T = [0.8 0 0 0.3 0
     0.2 0.6 0 0.2 0
     0 0.3 1 0 0
     0 0.1 0 0.4 0
     0 0 0 0.1 1];
%% A
Sumofwalk1 = 0;
Sumofwalk2 = 0;
Sumofwalk4 = 0;
endedin3 = 0;
endedin5 = 0;
somethingwentwrong = 0;
for n=1:experiencias
    state1 = crawl(T,1,[3,5]);
    crawl(T,1,[3,5])
    if state1(end) == 3
        endedin3 = endedin3 + 1;
    elseif state1(end) == 5
        endedin5 = endedin5 + 1; 
    else
        somethingwentwrong = somethingwentwrong + 1;
    end

    Sumofwalk1 = Sumofwalk1 + length(state1)-1;
    Sumofwalk2 = Sumofwalk2 + length(crawl(T,2,[3,5]))-1;
    Sumofwalk4 = Sumofwalk4 + length(crawl(T,4,[3,5]))-1;
end

med1 = Sumofwalk1/experiencias
med2 = Sumofwalk2/experiencias
med4 = Sumofwalk4/experiencias
medendin3 = endedin3/experiencias
medendin5 = endedin5/experiencias

%% B

cellArr = cell(1,experiencias);

randomStart = randi([1 3], 1,experiencias);
%generate 3 random numbers
%change 3 to 4, because 3 is an absorption state
randomStart(randomStart==3)=4;
smallestsize = 100;
biggestsize = 0;
for n = 1:experiencias
    cellArr{n} = crawl(T,randomStart(n),[3,5]);
    size = length(cellArr{n});
    if size > biggestsize
        biggestsize = size;
    elseif size < smallestsize
        smallestsize = size;
    end
end