import csv
import torch
import numpy as np
import pandas as pd 



def main():
    Dataframe = pd.read_csv('train.csv')
    #print(Dataframe)
    
    y = Dataframe[['Survived']].dropna(axis = 0, how = 'any')
    print(y)





if __name__ == "__main__":
    main()