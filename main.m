function [  ] = main(  )
%MAIN Summary of this function goes here
%   Detailed explanation goes here

    data = csvread('data_clean.csv');
    
    input = data(:,1:end-1);
    target = data(:,end);
    
    features = feature_selection(input,target);
    

end

