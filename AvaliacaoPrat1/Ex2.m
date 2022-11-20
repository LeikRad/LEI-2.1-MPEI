clear all

load("L.mat");
% A)

length(find(sum(L) == 0)) 

% B)
x = sum(L);
N = length(L);
T = L./repmat(x,length(L),1);

% C)
B = 0.85;
GoogleMat = B*T+(1-B)*ones(N)/N;
GoogleMat(isnan(GoogleMat)) = 1/N;

% D)
x0 = ones(N,1)/N;
iter = 1;
x = x0;
epsilon = 1e-10;
while 1
    fprintf(1,'iteração %d\n',iter);
    xold=x;
    x=GoogleMat*x;
    if max(abs(x-xold))<epsilon break ; end
    iter=iter+1;
end

x

[xs idx]=sort(x,'descend');
for p=1:N
    fprintf(1,'PageRank=%.3f : %d \n',x(idx(p)), idx(p));
end