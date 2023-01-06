clear all
%% General Data
udata = load("ml-100k\u.data");

FilmDic = readcell("film_info.txt", 'Delimiter', '\t');

UserDic = readcell("users.txt", 'Delimiter', ';');

save("GeneralData")

%% Create User Rank Set

UserRatings = cell(length(UserDic),2);

for i=1:length(UserDic)
    UserRatings{i,1} = i;
    ind = find(udata(:,1) == i);
    UserRatings{i,2} = udata(ind,2);
end