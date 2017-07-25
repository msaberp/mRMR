function [ D ] = DC( S,c )
%DC Summary of this function goes here
%   Detailed explanation goes here

    len = size(S,2);    
    temp = 0;
    for i=1:len
        xi = S(:,i);
        temp = temp+MI(xi',c');
    end

    D = temp/len;
end

