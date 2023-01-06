clear all
udata=load('u.data');
% Carrega o ficheiro dos dados dos filmes
N = 7919;
% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;
[users, FilmSet] = CreateDataStruct(u);
Nu = length(users);
k = 200;
seedMatrix = randi([1 1000],1,k);
h = zeros(Nu, k);

for UsersN=1:Nu
        ind = find(u(:,1) == users(UsersN));
        for hashFuncN=1:k
            hashArr=zeros(1,length(ind));
            for MovieN = 1:length(ind)
                key = u(ind(MovieN),2) + hashFuncN;
                hashArr(MovieN) = rem(DJB31MA(key, seedMatrix(hashFuncN)), N)+1;
            end
            h(UsersN,hashFuncN) = min(hashArr);
        end
end

J=zeros(Nu,Nu); % array para guardar distancias
bar= waitbar(0, 'Calculating');
for n1= 1:Nu
    waitbar(n1/Nu,bar);
    for n2= n1+1:Nu
        InterCon=intersect(h(n1,:), h(n2,:));
        ReunCon = unique([h(n1,:); h(n2,:)]);
        distance = 1-(length(InterCon)/length(ReunCon));
        J(n1,n2) = distance;
    end
end

delete (bar)
figure(1)
imagesc(J)

threshold = 0.1; % limiar de decis ̃ao
% % Array para guardar pares similares (user1, user2, distˆancia)
SimilarUsers= zeros(1,3);
k= 1;
count = 0;
for n1= 1:Nu
     for n2= n1+1:Nu
         if J(n1,n2) < threshold
             SimilarUsers(k,:) = [users(n1) users(n2) J(n1,n2)];
             k= k+1;
             count = count+1;
             if count >= 100
                break;
             end
         end
    end
end
save("simiusers", "SimilarUsers");

clear all

simuser2 = load("simiusers");
udata=load('u.data');
% Carrega o ficheiro dos dados dos filmes

% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;

% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores

Nu= length(users); % N  umero de utilizadores

% Constroi a lista de filmes para cada utilizador
Set= cell(Nu,1); % Usa celulas
for n = 1:Nu % Para cada utilizador
% Obtem os filmes de cada um
    ind = find(u(:,1) == users(n));
% E guarda num array. Usa celulas porque utilizador tem um numero
% diferente de filmes. Se fossem iguais podia ser um array
    Set{n} = [Set{n} u(ind,2)];
end

J=zeros(Nu,Nu); % array para guardar distancias
h= waitbar(0, 'Calculating');
for n1= 1:Nu
    waitbar(n1/Nu,h);
    for n2= n1+1:Nu
        InterCon=intersect(Set{n1}, Set{n2});
        ReunCon = unique([Set{n1}; Set{n2}]);
        distance = 1-(length(InterCon)/length(ReunCon));
        J(n1,n2) = distance;
% Adicionar c odigo aqui
    end
end
figure(2)
imagesc(J)
delete (h)
% Com base na distancia, determina pares com
% distancia inferior a um limiar pre-definido
threshold = 0.4; % limiar de decis ̃ao
% % Array para guardar pares similares (user1, user2, distˆancia)
SimilarUsers= zeros(1,3);
k= 1;
for n1= 1:Nu
     for n2= n1+1:Nu
         if J(n1,n2) < threshold
             SimilarUsers(k,:) = [users(n1) users(n2) J(n1,n2)];
             k= k+1;
         end
    end
end

testing1 = intersect(simuser2.SimilarUsers, SimilarUsers);
testing2 = unique([simuser2.SimilarUsers; SimilarUsers]);
length(testing1)/length(testing2)