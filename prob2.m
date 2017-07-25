function [ prob ] = prob2( x,setx,y,sety )
%PROB2 Summary of this function goes here
%   Detailed explanation goes here

    indx = find(setx==x);
    indy = find(sety==y);
    
    int = intersect(indx,indy);
    
    occ = size(int,2);
    len = size(setx,2);
    prob = occ/len;

end

