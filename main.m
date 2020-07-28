#Algorithm Main to call the diferent functions to process the machine learning model 

#Clear comand window and all variables from memory
clear ; close all; clc

#------------ Part 1-------------#
#Load data from the csv files 

[y, X] = readfile();

#------------ Part 2-------------#
#Plot Data

fprintf(['Plotting data with + indicating (y = 1) examples and o ' 'indicating (y = 0) examples.\n']);

PlotData(X, y);

% Put some labels 
hold on;
% Labels and Legend
xlabel('Age')
ylabel('Fare')

% Specified in plot order
legend('Survived', 'Not survived')
hold off;

#---------------Part 3 -------------#
#Compute Cost (J) & Gradient

#Initialize useful values
[m, n] = size(X);

#add  column x0 to complete the matrix X
X = [ones(m, 1), X];

#Initialize values of theta according with number of features x 
init_theta = zeros(n + 1, 1);

#Compute cost and gradient function that we will used to train the model
[cost, grad] = Cost_grad(init_theta, X, y);


#--------------Part 4 ------------#
#Compute Gradient Descent (Manual Repeat method)

fprintf('Printing optimal theta values using gradien descent\n');
#Set numer of iterations and alpha value
iterations = 1500;
alpha = 0.01;

#calculate optimal theta values using repeat method
theta1 = descent_grad(X, y, init_theta, alpha, iterations)

#-----------Part 5  Compute grad using fmcing------------#

options = optimset('GradObj', 'on', 'MaxIter', 400);

[theta, cost] = ...
   fminunc(@(t)(Cost_grad(t, X, y)), init_theta, options)


#-----------Part 6 Predict------------#

[Xtest, ind] = readfile2();

m = size(Xtest,1);

yval = zeros(m, 1);

Xtest = [ones(m, 1), Xtest];

for i = 1:m,
  if sigmoid(theta'*Xtest(i, 1:end)') >= 0.5,
    yval(i, 1) = 1;
  endif
  
endfor

submission = [];
submission = [submission, ind, yval];

csvwrite('submission.csv', submission);



   


