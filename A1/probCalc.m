function [probSimulacao] = probCalc(p, n, k, N)
%PROB Summary of this function goes here
%   Detailed explanation goes here
lancamentos = rand(n,N) > 1-p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N;
end

