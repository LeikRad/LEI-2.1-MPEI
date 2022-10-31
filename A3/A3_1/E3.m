clear all
% A)
T = rand(20);

x = sum(T);

T = T./repmat(x,20,1);

sum(T);
T>=0 & T<=1;

% B)

v = zeros(20,1);
v(1) = 1;

v2 = T^2 * v;
v5 = T^5 * v;
v10 = T^10 * v;
v100 = T^100* v;
fprintf("B) 2 : %f ; 5 : %f ; 10 : %f ; 100 : %f \n", v2(20),v5(20),v10(20),v100(20))