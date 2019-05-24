## Accessing a single column
# Using the pandas package
import pandas as pd
df['Name'] # column one ('Name')
df.Name # column one ('Name')


## Accessing a single row
# Using the pandas package
import pandas as pd
df.loc[0] # first row


## Accessing a single cell
# Using the pandas package
import pandas as pd
df['Name'][0] # cell in column one ('Name'), row one ['Alfred']
df.loc[0, 'Name'] # cell in row one, column one ('Name') ['Alfred']
df.at[0, 'Name'] # cell in row one, column one ('Name') ['Alfred']
df.iloc[0, 0] # cell in row one, column one ('Name') ['Alfred']
df.iat[0, 0] # cell in row one, column one ('Name') ['Alfred']
