## Adding new observations
# Using pandas
import pandas as pd
dict2 = {'Name': ['Fabulous', 'Git', 'Hub'],
'Age': [71, 8, 19],
'Random': ['Yes', 'Yes', 'No'],
'Interesting': [True, False, False]}
df2 = pd.DataFrame(dict2)
df = df.append(df2, ignore_index=True)

df = pd.concat([df, df2], ignore_index=True) # alternative


## Adding new variables (left join)
# Using pandas
import pandas as pd
dict2 = {'Name': ['Alfred', 'Batman', 'Charlie', 'Delta', 'Echo'],
'City': ['Bonn', 'London', 'Toronto', 'Quito', 'Reykjavik']}
df2 = pd.DataFrame(dict2)
df = df.merge(df2, how='inner', on='Name')
