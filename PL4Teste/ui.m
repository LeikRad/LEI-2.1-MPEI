clear all
% load all data (user, films, minhashes, blooms)
load("GeneralData.mat")

% get the movie ID 
fprintf("\tInsert Film ID 1 to %d: ", length(FilmDic))
IDSelect = input("");

% Menu Operations
while true
    choice = menuDisp();
    switch choice
        case 1
            fprintf("1\n")
        case 2
            fprintf("2\n")
        case 3
            fprintf("1\n")
        case 4
            fprintf("1\n")
        case 5
            break
        otherwise
            fprintf('Choice is not valid\n')
    end
end