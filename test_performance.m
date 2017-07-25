function [ perf ] = test_performance( Sm,c )
%TEST_PERFORMANCE Summary of this function goes here
%   Detailed explanation goes here
    
    net=patternnet([40 20]);
    %net.trainParam.showWindow=0;
    one_hot_c = ind2vec(c');
    net = train(net,Sm',one_hot_c);
    y = net(Sm');
    perf = perform(net,one_hot_c,y);
%     s = 100;
%     x = 1:s;
%     plot(x,one_hot_c(:,1:s),x,y(:,1:s));
    %perf = neural_network(Sm',c',70,20,size(Sm,2),60,1,100);
    
end

