import csv
import torch
import numpy as np
import pandas as pd 



def main():
    Dataframe = pd.read_csv('test.csv')
    #print(Dataframe)
    
    sex = Dataframe[['Sex']].dropna(axis =0, how = 'any')
    embarked = Dataframe[['Embarked']]

    Sexo = np.zeros((np.size(sex),1))
    Embarked = np.zeros((np.size(embarked) ,1))


    for i in range(np.size(sex)):
        if sex.values[i] == 'male':
            Sexo[i] = 1.0
        else: 
            Sexo[i] = 2.0
        if embarked.values[i] == 'C':
            Embarked[i] = -1.0
        elif embarked.values[i] == 'Q':
            Embarked[i] = 0.0
        elif embarked.values[i] == 'S':
            Embarked[i] = 1.0
        else:
            Embarked[i] = 0.5


    myFile = open('sextest.csv', 'w')
    with myFile:
        writer = csv.writer(myFile)
        writer.writerows(Sexo)    

    myFile = open('Embarkedtest.csv', 'w')
    with myFile:
        writer = csv.writer(myFile)
        writer.writerows(Embarked) 




if __name__ == "__main__":
    main()