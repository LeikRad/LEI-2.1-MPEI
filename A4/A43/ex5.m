
% Jaccard Distance using Minhash
Set = udata(1:end,1:2); clear udata
setSize = length(Set);

% Get minhashs
kMax = 15;
h = zeros(kMax, setSize);
minHash = zeros(kMax);

% for each one of the k hash function
for k = 1: kMax
    % for each member of the set
    for n = 1: setSize
        % get hash value
        key = tostring(Set(n)+num2str(k));
        h(k, n) = rem (string2hash(key), m) + 1;
    end
    % min hash
    minHash(k) = min(h(k,:));
end

% Estimate Jaccard Similarity
for k = 1: kMax
        differentValues = differentValues + length(unique(h(k:k+1,:)));
end
jaccardSimilarity = differentValues / kMax

