%% Codigo 1 - segunda versao
N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 2; %numero de caras
n1 = 20; %numero de lancamentos
n2 = 40;
n3 = 100;
S1 = 0:n1;
S2 = 0:n2;
S3 = 0:n3;

for J = 0:n1
    S1(J+1)=probCalc(p,n1,J,N);
end

for J = 0:n2
     S2(J+1)=probCalc(p,n2,J,N);
end

for J = 0:n3
     S3(J+1)=probCalc(p,n3,J,N); 
end

disp("S1")
disp(S1)
disp("S2")
disp(S2)
disp("S3")
disp(S3)