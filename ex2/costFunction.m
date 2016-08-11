function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
%theta = inv(X'*X)*X'*y;%�����淽����theta
%���ݶ��½��������
% p = zeros(m,1);
% alpha = 0.03;
% sum1 = 0;
% sum2 = 0;
% sum3 = 0;
% g = sigmoid(X * theta);
% for iter=1:400
%    
%     d1 = g - y;
%     temp0 = theta(1) - (alpha/m) * sum(d1);
%     d2 = (g - y)' *  (X(:,2));
%     temp1 = theta(2) - (alpha/m) * sum(d2);
%     d3 = (g - y)' *  (X(:,3));
%     temp2 = theta(3) - (alpha/m) * sum(d3);
%     theta(1) = temp0;
%     theta(2) = temp1;
%     theta(3) = temp2;
% end

% z = zeros(m,1);
% for i= 1:m
%     z(i) = X(i,:)*theta;
%     J = J-y(i)*log(1/(1+exp(-z(i))) )- (1-y(i))*log(1-1/(1+exp(-z(i))));
% end

hypothesis = h_func(X,theta);
hypothesis2 = sigmoid(X*theta);
J = -sum(log(hypothesis).*y +(1-y).*log(1-hypothesis))/m;%
grad(1) = sum(hypothesis-y)/m;
grad(2) = sum((hypothesis-y).*X(:,2))/m;
grad(3) = sum((hypothesis-y).*X(:,3))/m;

    
% =============================================================

% J = 1/m *J;
% grad = theta;

