clear all

% A)

m = 365; % dias do ano
N = 1e05; % n de experiencias
n = 2; % n de pessoas
prob = 0;
nArr = [];
probArr = [];
while prob < 0.5
    nArr = [nArr n];
    lanc = randi(m,n,N);
    diferentes = zeros(1,N);
    for col = 1:N
        diferentes(col)=length(unique(lanc(:,col)))<n;
    end
    prob = sum(diferentes)/N;
    probArr = [probArr prob];
    n = n+1;
end
figure("Name","Alínea A)")
plot(nArr, probArr,"r*-"),xlabel("nº pessoas"),ylabel("prob"),title("Alínea A)")

% B)

m = 365; % dias do ano
N = 1e05; % n de experiencias
n = 2; % n de pessoas
prob = 0;
nArr = [];
probArr = [];
while prob < 0.9
    nArr = [nArr n];
    lanc = randi(m,n,N);
    diferentes = zeros(1,N);
    for col = 1:N
        diferentes(col)=length(unique(lanc(:,col)))<n;
    end
    prob = sum(diferentes)/N;
    probArr = [probArr prob];
    n = n+1;
end
figure("Name","Alínea B)")
plot(nArr, probArr,"r*-"),xlabel("nº pessoas"),ylabel("prob"),title("Alínea B)")