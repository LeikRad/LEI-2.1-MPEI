clear all

% A)

n = 20; % n de dardos
m = 100; % n de alvos
N = 1e05; % n de experiencias
lanc = randi(m,n,N);

diferentes = zeros(1,N);

for col = 1:N
    diferentes(col)=length(unique(lanc(:,col)))==n;
end
p = sum(diferentes)/N;
fprintf("A) Probabilidade = %.6f\n",p)

% B)

n = 20; % n de dardos
m = 100; % n de alvos
N = 1e05; % n de experiencias
lanc = randi(m,n,N);

diferentes = zeros(1,N);

for col = 1:N
    diferentes(col)=length(unique(lanc(:,col)))<n;
end
p = sum(diferentes)/N;
fprintf("B) Probabilidade = %.6f\n",p)

% C)

narr = 10:10:100; % n de dardos
m = 1000; % n de alvos
N = 1e05;
res = zeros(1,length(narr));
figure("Name","Alínea C)")
for n = narr
    lanc = randi(m,n,N);

    diferentes = zeros(1,N);

    for col = 1:N
        diferentes(col)=length(unique(lanc(:,col)))<n;
    end
    res(n/10)=sum(diferentes)/N;
end
subplot(1,2,1)
plot(narr,res,"r*-"),xlabel("n"),ylabel("prob"),title("m=1000")

narr = 10:10:100; % n de dardos
m = 100000; % n de alvos
N = 1e05;
res = zeros(1,length(narr));

for n = narr
    lanc = randi(m,n,N);

    diferentes = zeros(1,N);

    for col = 1:N
        diferentes(col)=length(unique(lanc(:,col)))<n;
    end
    res(n/10)=sum(diferentes)/N;
end
subplot(1,2,2)
plot(narr,res,"g*-"),xlabel("n"),ylabel("prob"),title("m=100000")

% D)
n = 100; % n de dardos
marr = [200, 500, 1000, 2000, 5000, 10000, 20000, 50000, 100000]; % n de alvos
N = 1e05;
res = [];
figure("Name","Alínea D)")
for m = marr
    lanc = randi(m,n,N);

    diferentes = zeros(1,N);

    for col = 1:N
        diferentes(col)=length(unique(lanc(:,col)))<n;
    end
    res = [res sum(diferentes)/N];
end
plot(marr, res, "r*-"),xlabel("m"),ylabel("prob"),title("n=100")
