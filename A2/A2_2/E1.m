%a)
Sx = 1:6;

%probs = [1 1 1 1 1 1]/6;
probs = ones(1,6)/6;
figure(1)
subplot(1,2,1)
stem(Sx,probs)
grid on
xlim([0 7])

%b)
cumSumProb = cumsum(probs);
subplot(1,2,2)
stairs([0 Sx 7],[0 cumSumProb 1])
grid on
ylim([0 1.1])
