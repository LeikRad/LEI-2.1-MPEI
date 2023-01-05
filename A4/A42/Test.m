n = 100;
m = 50;
k = 3;

B = BloomInit(n,k);
sum(B)
max(B)
disp("test")
B = BloomInsert(B,'test',10);
sum(B)
max(B)

disp("lmao2")
B = BloomInsert(B,'Lmao2',10);
sum(B)
disp("verify")
BloomVerify(B,'test',10)
BloomVerify(B,'This',k)