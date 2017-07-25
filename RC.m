function [ R ] = RC( S )
%RC Summary of this function goes here
%   Detailed explanation goes here

    len = size(S,2);
    temp = 0;
    for i=1:len
        xi = S(:,i);
        for j=1:len
            xj = S(:,j);
            temp = temp+MI(xi',xj');
        end
    end

    R = temp/len^2;
end

