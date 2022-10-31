% A)
% Analiticamente

k=7;
p=1/1000;
n=8000;
pK0 = nchoosek(n,k)*p^k*(1-p)^(n-k); % nchoosek(n,k)= n!/(n-k)!/k!
fprintf("A) Pk = 0 -> %f\n",pK0)

% B)
lambda = n*p;
pK = (lambda^k)/(factorial(k))*exp(-lambda);
fprintf("A) Pk = 0 -> %f\n",pK)
