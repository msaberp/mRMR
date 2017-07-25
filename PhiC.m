function [ phi ] = PhiC( S,c )
%PHIC Summary of this function goes here
%   Detailed explanation goes here

    D = DC(S,c);
    R = RC(S);
    phi = D-R;

end

