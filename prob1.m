function [ prob ] = prob1( x,set )
%PROB1 Summary of this function goes here
%   Detailed explanation goes here

    ind = find(set==x);
    occ = size(ind,2);
    len = size(set,2);
    prob = occ/len;

end

