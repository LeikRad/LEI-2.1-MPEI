clear all

p= logspace(-3,log10(1/2),100);

N = 1e05;
n1 = 2;
n2 = 4;
pArrAv2 = zeros(1,100);
pArrAv1 = zeros(1,100);

for pIndex=1:length(p)
    aviao1 = rand(n1,N) < p(pIndex);
    aviao2 = rand(n2,N) < p(pIndex);
   
    sumAviao1 = sum(aviao1) > n1/2;
    sumAviao2 = sum(aviao2) > n2/2;

    cfavAv1 = sum(sumAviao1);
    cfavAv2 = sum(sumAviao2);
    
    pFAv1 = cfavAv1/N;
    pFAv2 = cfavAv2/N;
    
    pArrAv1(pIndex) = pFAv1;
    pArrAv2(pIndex) = pFAv2;
end

plot(p, pArrAv1,"b")
hold on
plot(p, pArrAv2,"r")