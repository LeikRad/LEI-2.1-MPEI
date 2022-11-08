clear all

% a

H = [0 0 0 0 1/3 0      
     1 0 0 0 1/3 0
     0 1/2 0 1 0 0
     0 0 1 0 0 0
     0 1/2 0 0 0 0
     0 0 0 0 1/3 0]

sum(H)
H>=0 & H<=1



rA = ones(1,6)'*1/6;

for n=1:10
    rA = H*rA;
end

rA

% B
% 
% Spider Trap = CD
% Dead End = F

% C

HC = [0 0 0 0 1/3 1/6   
     1 0 0 0 1/3 1/6
     0 1/2 0 1 0 1/6
     0 0 1 0 0 1/6
     0 1/2 0 0 0 1/6
     0 0 0 0 1/3 1/6]
sum(H)
HC>=0 & HC<=1



rC = ones(1,6)'*1/6;

for n=1:10
    rC = HC*rC;
end

rC

% D

oneovern = ones(6,6)*1/6;

HwithTP = 0.8*HC + 0.2*oneovern;

sum(HwithTP)
HwithTP>=0 & HwithTP<=1

rD = ones(1,6)'*1/6;

for n=1:10
    rD = HwithTP*rD;
end

rD

% E
rElast = ones(1,6)'*1/6;
rEnew = rElast;
n = 0;
while true
    rEnew = HwithTP*rElast;
    n = n + 1;
    testMat = rEnew - rElast;
    if testMat<=10^-4
        break
    end
    rElast = rEnew;
    
end

rEnew
n

