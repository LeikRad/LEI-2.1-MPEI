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
