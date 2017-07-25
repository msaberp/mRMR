function [ ret ] = MI( A,B )
%MI Summary of this function goes here
%   Detailed explanation goes here

    R = cov(A,B);
    ret = R(1,2);
    
    %len = size(A,2);
%     uA = unique(A);
%     len1 = size(uA,2);
%     uB = unique(B);
%     len2 = size(uB,2);
%     s = 0;
    %epsilon = 0.1;
    
%     for i=1:len1
%         x = uA(i);
%         p1x = prob1(x,A);
%         for j=1:len2
%             y = uB(j);
%             p2 = prob2(x,A,y,B);
%             if p2==0
%                 continue;
%             end
%             p1y = prob1(y,B);
%             s = s+p2*(log10(p2/(p1x*p1y)));
%         end
%     end

end

