function [y, X] = readfile()

#read Files csv using function csvread 
Dataset = csvread('train.csv');
sex = csvread('sex.csv');
embarked = csvread('Embarked.csv');

#Vector y getting from csv file
y = Dataset(2:end, 2);
X = [];
#using the diferents matrix getting from the csv file we join this in a only matrix X with n features
X = [X, Dataset(2:end, 3), sex,  Dataset(2:end, 7:9), Dataset(2:end, 11), embarked];

end


