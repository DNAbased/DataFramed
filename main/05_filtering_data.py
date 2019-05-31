## Filtering based on values in a column
# Using pandas
import pandas as pd
df = df[df['Age'] > 20]

df = df[df.Age > 20]

namecheck = ['Alfred', 'Batman']
df = df[df.Name.isin(namecheck)] # only keep the ones you want
df = df[~df.Name.isin(namecheck)] # reverse of the above


## Drop specific columns
# Using pandas
import pandas as pd
df = df.drop(columns=['Age']) # drops the 'Age' column


## Drop specific rows
# Using pandas
import pandas as pd
df = df.drop(index=0) # drops the first row


## Bonus: filter for NAs
# Using pandas
import pandas as pd
df.at[0, 'Name'] = float('NaN') # set NA
df = df[df.Name.isnull()] # only NAs
df = df[df.name.notnull()] # only non-NAs
