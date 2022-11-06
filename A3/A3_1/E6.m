clear all
% a
T = [0.8 0 0 0.3 0
     0.2 0.6 0 0.2 0
     0 0.3 1 0 0
     0 0.1 0 0.4 0
     0 0 0 0.1 1];

sum(T)
T>=0 & T<=1

% b
TcopyB = T;
probArr = zeros(1,100);
vArr = zeros(1,100);
v = [1 0 0 0 0]';
% duas maneiras, com T*T ou T*v
for n = 1:100
    probArr(n)= TcopyB(2,1);
    TcopyB = TcopyB*T;
    v = T*v;
    vArr(n) = v(2);
end

plot(1:100,probArr)

% c
TcopyC = T;
prob3Arr = zeros(1,100);
prob5Arr = zeros(1,100);
% duas maneiras, com T*T ou T*v
for n = 1:100
    prob3Arr(n)= TcopyC(3,1);
    prob5Arr(n)= TcopyC(5,1);
    TcopyC = TcopyC*T;
end
subplot(1,2,1)
plot(1:100,prob3Arr)
grid("on")
subplot(1,2,2)
plot(1:100,prob5Arr)
grid("on")

% d
% matriz Q = matriz de transiçao que nao vao dar a probabilidades
% absoverventes
% Q = ---------
%     |\ 1 2 4| 3 5
%     |1      |
%     |2      |
%     |4      |
%     --------- 
%     3
%     5

Q = [0.8 0 0.3 
     0.2 0.6 0.2 
     0 0.1 0.4];
sum(Q)
Q>=0 & Q<=1

% e
% matriz fundamental = Indentidade - matriz Q
F = (eye(3,3) - Q)^-1;

% f
t = F'*ones(3,1);

% g
R = [0 0.3 0
     0 0 0.1];

B = R*F;
B(:,1)
