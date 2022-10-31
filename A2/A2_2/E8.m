clear all

lambda = 0.02*100;
k = [0 1];
p = 0;
for i=1:length(k)
    p = p + (lambda^k(i))/(factorial(k(i)))*exp(-lambda);
end

fprintf("8) Pk = 0 -> %f\n",p)
