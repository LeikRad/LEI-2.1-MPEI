clear all
udata=load('u.data');
% Carrega o ficheiro dos dados dos filmes

% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;

[users, FilmSet] = CreateDataStruct(u);
t=cputime;
tic
Dist = CalculateDist(FilmSet);
imagesc(Dist)
toc
cputime-t

threshold = 0.4;
t=cputime;
tic
simUser = SimilarUsers(Dist, users, threshold);
toc
cputime-t
for i=1:length(simUser(:,1))
    sprintf("u1 %d, u2 %d -> Similarity = %f",simUser(i,1),simUser(i,2),simUser(i,3)) 
end