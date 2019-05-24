## Creating a data set
# Using pandas
import pandas as pd
dict = {'Name': ['Alfred', 'Batman', 'Charlie', 'Delta', 'Echo'],
'Age': [99, 50, 30, 20, 0],
'Random': ['Yes', 'No', 'Yes', 'No', 'No'],
'Interesting': [True, True, False, False, True]}
df = pd.DataFrame(dict)


## Reading in data
# Using pandas
import pandas as pd
df = pd.read_csv('01_data_set.tsv', sep='\t')


## Writing data
# Using pandas
import pandas as pd
df.to_csv('01_data_set_new.tsv', sep='\t', index=False)
