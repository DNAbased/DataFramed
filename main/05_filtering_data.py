## Filtering based on values in a column
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df = df[df['Age'] > 20]

df = df[df.Age > 20]

namecheck = ['Alfred', 'Batman']
df = df[df.Name.isin(namecheck)] # only keep the ones you want
df = df[~df.Name.isin(namecheck)] # reverse of the above


## Drop specific columns
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df = df.drop(columns=['Age']) # drops the 'Age' column


## Drop specific rows
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df = df.drop(index=0) # drops the first row


## Bonus: filter for NAs
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df.at[0, 'Name'] = float('NaN') # set NA
df = df[df.Name.isnull()] # only NAs
df = df[df.name.notnull()] # only non-NAs
