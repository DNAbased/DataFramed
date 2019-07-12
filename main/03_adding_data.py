## Adding a single column
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
city = ['Bonn', 'London', 'Toronto', 'Quito', 'Reykjavik'] # new column to be added
df['City'] = city # add city as new column

df = df.assign(City = city) # assign city as new column

df.insert(4, 'City', city) # insert city as new column to position 4 # note: happens inplace


## Adding a single row
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
dict = {'Name': 'Fabulous', 'Age': 71, 'Random': 'Yes', 'Interesting': True} # dictionary of new row
df = df.append(dict, ignore_index=True) # append dict to df # also works for appending another dataframe

df.loc[5] = dict # add dict as new row # necessary to know, which index is the first 'empty' one
