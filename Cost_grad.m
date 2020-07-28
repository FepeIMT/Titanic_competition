function [cost, grad] = Cost_grad(theta, X, y)
#initialize useful values
cost = 0;
grad = zeros(size(theta));
m = length(y);

#Compute cost J 
cost = (1.0/m)*(-y'*log(sigmoid(X*theta)) - (1-y)'*log(1-(sigmoid(X*theta))));

#Compute gradient.
grad = (1.0/m)*X'*(sigmoid(X*theta)-y);  
  
end