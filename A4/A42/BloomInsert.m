function [Bloom] = BloomInsert(Bloom, elem, k)
%BLOOMINSERT Summary of this function goes here
%   Detailed explanation goes here
    n = length(Bloom);
    if k>3
        seed = 4;
    else
        seed = 0;
    end

    
    for i=1:k
        Karr=[hashstring(elem,n),string2hash(elem),string2hash(elem,'sdbm')];
        elem = [elem int2str(i)];
        if(i>3)
            seed = i;
            index = mod(DJB31MA(elem,seed),n)+1;
        else
            index = mod(Karr(i),n)+1; 
        end
        Bloom(index)=1;
    end
end

