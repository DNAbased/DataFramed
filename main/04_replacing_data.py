## Replacing one column
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df['Name'] = ['Argon', 'Balloon', 'Chess', 'Duck', 'Exit']

df.Name = ['Argon', 'Balloon', 'Chess', 'Duck', 'Exit']


## Replacing one row
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df.loc[0] = ['Argon', 1, 'No', False] # not recommended # need to know the exact order of columns


## Replacing a single cell
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df['Name'][0] = 'Argon' # not recommended # pandas warning

df.loc[0, 'Name'] = 'Argon'

df.at[0, 'Name'] = 'Argon'

df.iloc[0, 0] = 'Argon' # note: this may be a different column due to pandas' ordering

df.iat[0, 0] = 'Argon' # see above
