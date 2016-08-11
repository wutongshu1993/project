function [ res ] = h_func( inputX, theta )
%H_FUNC Summary of this function goes here
%   Detailed explanation goes here
%tmp = theta(1)+theta(2)*inputX(:,2)+theta(3)*inputX(:,3);
tmp =inputX * theta;
res = 1./(1+exp(-tmp));
end

