function [J] = CalculateDist(FilmSet)
%CALCULATEDIST Summary of this function goes here
%   Detailed explanation goes here
Nu = length(FilmSet);
J=zeros(Nu,Nu); % array para guardar distancias
h= waitbar(0, 'Calculating');
for n1= 1:Nu
    waitbar(n1/Nu,h);
    for n2= n1+1:Nu
        InterCon=intersect(FilmSet{n1}, FilmSet{n2});
        ReunCon = unique([FilmSet{n1}; FilmSet{n2}]);
        distance = 1-(length(InterCon)/length(ReunCon));
        J(n1,n2) = distance;
% Adicionar c odigo aqui
    end
end
delete (h)
end

