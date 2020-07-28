function J = compute_cost(theta, X, y)

m = length(y);
J = 0;

J = (1.0/m)*(-y'*log(sigmoid(X*theta)) - (1-y)'*log(1-(sigmoid(X*theta))));

end