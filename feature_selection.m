function [ features ] = feature_selection( S,c )
%FEATURE_SELECTION Summary of this function goes here
%   Detailed explanation goes here
    
    Sm = [];
    len = size(S,2);    
    inds = [];
    perfs = zeros(1,len);
    minimum = 100;
    alpha = 100;
    
    for i=1:len
        [Sm,inds] = best_feature(S,Sm,c,inds);
        perf = test_performance(Sm,c);
        perfs(1,i) = perf;
        if i~=1
            minimum = min(perfs(1:i-1));
        end
        if perf>minimum+alpha
            break;4
        end
        
        if ismember(i,[25,50,75,100,125,150])
            plot(1:i,perfs(1:i));
        end
    end

    features = inds;
end

