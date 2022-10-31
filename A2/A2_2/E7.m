clear all

% A)

k=0;
lambda = 15;
pK0 = (lambda^k)/(factorial(k))*exp(-lambda);
fprintf("A) Pk = 0 -> %f\n",pK0)

% B)

kArr = 0:10;
lambda = 15;
P = 1;

for i=1:length(kArr)
    P = P -(lambda^kArr(i))/(factorial(kArr(i)))*exp(-lambda);
end
fprintf("B) Pk > 10 -> %f\n",P)