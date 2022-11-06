%a
T = [0.7 0.2 0.3
     0.2 0.3 0.3
     0.1 0.5 0.4]
% verificar se esta bem
sum(T)
T>=0 & T<=1

%b

fprintf("%f\n", 1*T(1,1)*T(1,1))

%c

fprintf("%f\n", T(1,1)*T(1,1)+T(1,2)*T(1,2)+T(1,1)*T(1,2)+T(1,2)*T(1,1))

%d 

dia_sol = 1;
ch = 0;
nv = 0;
v = [1 0 0]';
for i = 2:31
    v = T*v;
    dia_sol = dia_sol +v(1);
    ch = ch + v(3);
    nv = nv + v(2);
end

disp(dia_sol)
disp(nv)
disp(ch)

%e

dia_sol = 0;
ch = 1;
nv = 0;
v = [0 0 1]';
for i = 2:31
    v = T*v;
    dia_sol = dia_sol +v(1);
    ch = ch + v(3);
    nv = nv + v(2);
end

disp(dia_sol)
disp(nv)
disp(ch)

%f 

dores = 0.1
v = [1 0 0]';
for i = 2:31
    v = T*v;
    dores = dores + 0.1*v(1)+0.3*v(2)+0.5*v(3);
end
disp(dores)

dores = 0.5;
v = [0 0 1]';
for i = 2:31
    v = T*v;
    dores = dores + 0.1*v(1)+0.3*v(2)+0.5*v(3);
end
disp(dores)