function [SimilarUsers] = SimilarUsers(Dist,users,threshold)
%SIMILARUSERS Summary of this function goes here
%   Detailed explanation goes here
SimilarUsers= zeros(1,3);
Nu = length(users);
k= 1;
for n1= 1:Nu
     for n2= n1+1:Nu
         if Dist(n1,n2) < threshold
             SimilarUsers(k,:) = [users(n1) users(n2) Dist(n1,n2)];
             k= k+1;
         end
    end
end
end

