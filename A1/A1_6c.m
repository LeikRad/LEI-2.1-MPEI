N= 1e5;
p = 0.3;
k = 5;
n = 5;
probAnaliticaVec = 0:k;
probCalcVec = 0:k;

for J = 0:k
    probCalcVec(J+1)=probCalc(p,n,J,N);
end
histogram(probCalcVec);
