import pandas as pd
import numpy as dp
import matplotlib.pyplot as plt
import seaborn as sns



df = pd.read_csv(r'C:\Documents\DATA ANALYSIS\Sales Dataset Enlarged\data\sales.csv')
print(df.head())

#Print list of all columns 
list_of_column_names = list(df.columns)
print('List of column names:',
list_of_column_names)

#Printing merge of two columns into one, this is what i need. 
print(df['Product'] +' '+df['line'])

#Finally combining two columns into one by making new column
#Product line
df['Product line'] = df['Product'] +' '+df['line']
#Delete previous columns
df.pop('Product')
df.pop('line')

#Product type
df['Product type'] = df['Product.1'] +' '+df['type']
#Delete previous columns
df.pop('Product.1')
df.pop('type')

#Product Order
df['Product Order'] = df['Product.2']+' '+df['Order']
#Delete previous columns
df.pop('Product.2')
df.pop('Order')

#Edit Country (Retailer)
print(df.loc[0, 'Retailer'])
df.loc[0, 'Retailer'] = 'United States'
df.loc[15, 'Retailer'] = 'United Kingdom'
df.loc[21, 'Retailer'] = 'United States'
df.loc[36, 'Retailer'] = 'United Kingdom'
df.loc[42, 'Retailer'] = 'United States'
df.loc[57, 'Retailer'] = 'United Kingdom'
df.loc[78, 'Retailer'] = 'United Kingdom'
df.loc[84, 'Retailer'] = 'United States'
df.loc[99, 'Retailer'] = 'United Kingdom'




#Renaming column 
df.rename(columns={"type.1":"Type",
                   "method":"Method",
                  "Retailer":"Country"},inplace=True)

#Removinh old columns
df.pop('country')
df['Retailer'] = ''
print(df.head())

#Making the columns placement as it was
df_new = df[['Year','Product line', 'Product type', 'Product Order', 'Method', 'Type','Retailer', 'Country', 'Revenue']]

#Checking columns 
list_of_column_names_1 = list(df_new.columns)
print('List of column names:',
list_of_column_names_1)

#Checking in general
print(df_new.head())

#Saved
df_new.to_csv('edited_sales.csv', index= False)