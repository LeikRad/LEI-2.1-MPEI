function [stringArr] = GenerateStrings(N,imin, imax, alfabeto, Prob)
%GENERATESTRINGS Summary of this function goes here
%   Detailed explanation goes here
    if nargin<5, Prob=ones(1,length(alfabeto))/length(alfabeto); end
    tamanho = randi([imin imax], 1,N);
    stringArr = cell(1,N);
    for i=1:N
        x=char(randsrc(1,tamanho,[double(alfabeto); Prob]));
        word = alfabeto(x);
        stringArr{i} = word;
    end
end

