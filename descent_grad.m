function theta1 = descent_grad(X, y, theta1, alpha, iterations)

#Initialize useful values  
m = length(y);

for i = 1:iterations,
  theta1 = theta1 - (alpha/m)*X'*(sigmoid(X*theta1)-y);
endfor

end