import pandas as pd
import numpy as dp
import matplotlib.pyplot as plt
import seaborn as sns



df = pd.read_csv('9_May_2022.csv')
print(df.head())

#If you have id on the fist part drop it commund
df.drop("ID",axis=1,inplace=True)
print(df.head())


#Renaming columms 
df.rename(columns={"\nName": "Name",
                   "Current Players":"Current_players",
                   "Peak Players":"Peak_players",
                   "Hours Played":"Hours_played"},inplace=True)
print(df.head())


#Print unique values numbers
print("Unique values")
for i in df.columns:
    print(f"{i}: {len(df[i].unique())}")


#Checking for uniqness
df[["Current_players", "Peak_players","Hours_played"]] = df[["Current_players", "Peak_players","Hours_played"]].apply(lambda x: x.str.replace(',',''))
df = df.astype({"Current_players": 'float64',
          'Peak_players': 'float64',
          "Hours_played":"float64"})


#Correlations
print('correlation:')
print(dp.corrcoef(df['Hours_played'],df['Current_players']))
sns.scatterplot(df['Hours_played'],df['Current_players'])
plt.show()

print(df.corr())

#Making it give us the top perfomars 
TopPeakGamesIndex = df.Name[df.Peak_players.nlargest(5).index].values
TopPeakGamesValues = df.Peak_players.nlargest(5)

TopHoursPlayedIndex = df.Name[df.Hours_played.nlargest(5).index].values
TopHoursPlayedValues = df.Hours_played.nlargest(5)

TopCurrentPlayersIndex = df.Name[df.Current_players.nlargest(5).index].values
TopCurrentPlayersValues = df.Current_players.nlargest(5)


#TOP 5 Peak_no_of_players graph
ax = sns.barplot(x=TopPeakGamesIndex,y=TopPeakGamesValues)
ax.set_xticklabels(ax.get_xticklabels(),rotation = 100)
ax.set_title('TOP 5 "Peak_no_of_players"');
#TOP 5 Peak_no_of_players
plt.show()


#TOP 5 Hours Played Games graph
ax = sns.barplot(x=TopHoursPlayedIndex,y=TopHoursPlayedValues)
ax.set_xticklabels(ax.get_xticklabels(),rotation = 60)
ax.set_title('TOP 5 "Hours Played Games"');
#TOP 5 Hours Played Games
plt.show()

#TOP 5 Current Players Games graph
ax = sns.barplot(x=TopCurrentPlayersIndex,y=TopCurrentPlayersValues)
ax.set_xticklabels(ax.get_xticklabels(),rotation = 60)
ax.set_title('TOP 5 "Current Players Games"');
#TOP 5 Current Players Games
plt.show()


#Making it give us the lowest perfomars 
LowestPeakGamesIndex = df.Name[df.Peak_players.sort_values(ascending=True)[:5].index].values
LowestPeakGamesValues = df.Peak_players.sort_values(ascending=True)[:5].values

LowestHoursPlayedIndex = df.Name[df.Hours_played.sort_values(ascending=True)[:5].index].values
LowestHoursPlayedValues = df.Hours_played.sort_values(ascending=True)[:5].values

LowestCurrentPlayersIndex = df.Name[df.Current_players.sort_values(ascending=True)[:5].index].values
LowestCurrentPlayersValues = df.Current_players.sort_values(ascending=True)[:5].values



#Lowest 5 Peak_no_of_players graph
ax = sns.barplot(x=LowestPeakGamesIndex,y=LowestPeakGamesValues)
ax.set_xticklabels(ax.get_xticklabels(),rotation = 60)
ax.set_title('Top Lowest 5 "Peak_no_of_players"');
#Top Lowest 5 Peak_no_of_players
plt.show()


#Lowest 5 Hours Played Games graph
ax = sns.barplot(x=LowestHoursPlayedIndex,y=LowestHoursPlayedValues)
ax.set_xticklabels(ax.get_xticklabels(),rotation = 60)
ax.set_title('Top Lowest 5 "Hours Played Games"');
#Top Lowest 5 Hours Played Games
plt.show()

#Lowest 5 Current Players Games graph
ax = sns.barplot(x=LowestCurrentPlayersIndex,y=LowestCurrentPlayersValues)
ax.set_xticklabels(ax.get_xticklabels(),rotation = 60)
ax.set_title('Top Lowest 5 "Current Players Games"');
#Top Lowest 5 Current Players Game
plt.show()



