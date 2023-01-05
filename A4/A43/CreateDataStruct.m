function [users,CellArr] = CreateDataStruct(UData)
u= UData(1:end,1:2); clear udata;

% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores

Nu= length(users); % N  umero de utilizadores

% Constroi a lista de filmes para cada utilizador
CellArr= cell(Nu,1); % Usa celulas
for n = 1:Nu % Para cada utilizador
% Obtem os filmes de cada um
    ind = find(u(:,1) == users(n));
% E guarda num array. Usa celulas porque utilizador tem um numero
% diferente de filmes. Se fossem iguais podia ser um array
    CellArr{n} = [CellArr{n} u(ind,2)];
end
end

