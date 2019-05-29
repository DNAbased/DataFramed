## Replacing one column
# Using the pandas package
import pandas as pd
df['Name'] = ['Argon', 'Balloon', 'Chess', 'Duck', 'Exit']
df.Name = ['Argon', 'Balloon', 'Chess', 'Duck', 'Exit']


## Replacing on row
# Using the pandas package
import pandas as pd
df.loc[0] = [1, False, 'Argon', 'No'] # not recommended # need to know the exact order of columns


## Replacing a single cell
# Using the pandas package
import pandas as pd
df['Name'][0] = 'Argon' # not recommended # pandas warning
df.loc[0, 'Name'] = 'Argon'
df.at[0, 'Name'] = 'Argon'
df.iloc[0, 0] = 'Argon' # note: this may be a different column due to pandas' ordering
df.iat[0, 0] = 'Argon' # see above
