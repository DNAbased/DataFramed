## Accessing a single column
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df['Name'] # column one ('Name')

df.Name # column one ('Name')


## Accessing a single row
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df.loc[0] # first row


## Accessing a single cell
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df['Name'][0] # cell in column one ('Name'), row one ['Alfred']

df.loc[0, 'Name'] # cell in row one, column one ('Name') ['Alfred']

df.at[0, 'Name'] # cell in row one, column one ('Name') ['Alfred']

df.iloc[0, 0] # cell in row one, column one ('Name') ['Alfred']

df.iat[0, 0] # cell in row one, column one ('Name') ['Alfred']
