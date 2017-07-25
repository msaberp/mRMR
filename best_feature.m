function [ Sm,inds ] = best_feature( S,Sm,c,inds )
%BEST_FEATURE Summary of this function goes here
%   Detailed explanation goes here

    len = size(S,2);    
    phis = ones(1,len)*-1000;
    
    for i=1:len
        if ismember(i,inds)
            continue;
        end
        fprintf('iterator: %d\n',i);
        temp = Sm;
        temp = [temp,S(:,i)];
        phi = PhiC(temp,c);
        phis(1,i) = phi;
    end
    
    [m,index] = max(phis);
    Sm = [Sm,S(:,index)];
    inds = [inds,index];
end

