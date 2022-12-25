import pandas as pd
import numpy as dp
import matplotlib.pyplot as plt
import seaborn as sns



df = pd.read_csv(r'C:\Documents\DATA ANALYSIS\Facebook Campaign Dataset\data\Campaign Data.csv')
print(df.head())

#Delete by hand the first row ("Campaign Data")

#Print list of all columns 
list_of_column_names = list(df.columns)
print('List of column names:',
list_of_column_names)

#Renaming column
df.rename(columns={"views":"Views",
                   "likes":"Likes"},inplace=True)

#Make new column for Id
df['Id'] = range(1,101)


#Making the columns placement as it was
df_new = df[['Id','Views', 'Likes']]


#Checking columns 
list_of_column_names_1 = list(df_new.columns)
print('List of column names:',
list_of_column_names_1)

#Checking in general
print(df.head())

#Saved
df_new.to_csv('edited_sales.csv', index= False)