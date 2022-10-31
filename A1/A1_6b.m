N= 1e5;
p = 0.3;
k = 2;
n = 5;
probAnaliticaVec = 0:k;
probCalcVec = 0:k;

lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)>=k;
probSimulacao= sum(sucessos)/N

for J = 0:k
    probAnaliticaVec(J+1)= nchoosek(n,J)*p^J*(1-p)^(n-J); % nchoosek(n,k)= n!/(n-k)!/k!
    probCalcVec(J+1)=probCalc(p,n,J,N);
end   
sum(probAnaliticaVec)
sum(probCalcVec)