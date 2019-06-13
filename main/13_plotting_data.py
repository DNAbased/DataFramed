## Creating plotting data
# Using Pandas
from random import randint, choice, seed
import pandas as pd
numbers = []
randoms = []
seed(65536)
for i in range(100):
    numbers.append(randint(1, 100))
    randoms.append(choice(['Yes', 'No']))

dict = {'Values': numbers, 'Random': randoms}
scatter_data = pd.DataFrame(dict).sort_values(by='Values').reset_index()
bar_data = pd.DataFrame(scatter_data['Random']).reset_index()
histo_data = scatter_data
box_data = scatter_data
line_data = scatter_data
pie_data = 0

## Plotting Data
# Using Seaborn
import seaborn as sns
import matplotlib.pyplot as plt
# scatter_plot
sns.set()
fig, ax = plt.subplots()
ax = sns.scatterplot(data=line_data, x=range(len(line_data)), y='Values', hue='Random')
ax.set(xlabel='#', ylabel='Value')
fig.savefig('scatter_plot.png')

# bar_plot
sns.set()
fig, ax = plt.subplots()
ax = sns.countplot(x=bar_data.Random) # use y to turn 90 degrees
ax.set(xlabel='#', ylabel='Random')
fig.savefig('bar_plot.png')

# histogram
sns.set()
fig, ax = plt.subplots()
ax = sns.distplot(a=histo_data.Values)
ax.set(xlim=(0, 100))
fig.savefig('histogram.png') # not split up for 'Yes' and 'No'

# box_plot
sns.set()
fig, ax = plt.subplots()
ax = sns.boxenplot(data=box_data, x='Random', y='Values')
fig.savefig('box_plot.png') 

# line_plot
sns.set()
fig, ax = plt.subplots()
ax = sns.lineplot(data=line_data, x=range(len(line_data)), y='Values', hue='Random')
ax.set(xlabel='#', ylabel='Value')
fig.savefig('line_plot.png')

# pie_chart # but remember: pie charts are bad!
# no pie charts in Seaborn (0.9)
