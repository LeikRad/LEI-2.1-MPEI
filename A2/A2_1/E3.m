clear all

% A) 

n = 10; % n de keys
m = 1000; % n de target
N = 1e05;
lanc = randi(m-1,n,N);

diferentes = zeros(1,N);

for col = 1:N
    diferentes(col)=length(unique(lanc(:,col)))<n;
end
p = sum(diferentes)/N;
fprintf("A) Probabilidade = %.6f\n",p)

% B)
narr = 0:10:100; % n de keys
m = 1000; % n de target
N = 1e05;
res = zeros(1,length(narr));
for i=1:1:length(narr)
    n = narr(i);
    diferentes = zeros(1,N);
    lanc = randi(m-1,n,N);
    for col = 1:N
        diferentes(col)=length(unique(lanc(:,col)))<n;
    end
    res(i) = sum(diferentes)/N;
end
figure("Name","Alínea B)")
plot(narr, res,"r*-"),xlabel("nº keys"),ylabel("prob"),title("Alínea B) | T = 1000"),xlim([0 105]),ylim([0 1.1])

% C)

n = 50  ; % n de dardos
marr = 100:100:1000;
N = 1e05;
res = zeros(1,length(marr));

for i = 1:length(marr)
    m = marr(i);
    lanc = randi(m,n,N);

    successos = zeros(1,N);

    for col = 1:N
        successos(col)=length(unique(lanc(:,col)))==n;
    end
    res(i) = sum(successos)/N;
end
figure("Name", "Alínea C)")
plot(marr, res, "r*-"),xlabel("T"),ylabel("prob"),title("Alínea C) | Keys = 50"),xlim([95 1005]),ylim([0 1])
