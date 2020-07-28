function [Xtest, ind] = readfile2()


Dataset = csvread('test.csv');
sex = csvread('sextest.csv');
embarked = csvread('Embarkedtest.csv');

ind = Dataset(2:end, 1);
Xtest = [];
Xtest = [Xtest, Dataset(2:end, 2), sex,  Dataset(2:end, 6:8), Dataset(2:end, 10), embarked];

end