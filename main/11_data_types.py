## Basic data types
# Check the type
type(1) # int
type(1.5) # float
type('one') # string
type(True) # boolean

# Set the type
int(1.5) # 1
float(1) # 1.5
str(1) # '1'
bool(0) # False

## Data types in columns
# pandas
import pandas as pd
df = pd.read_csv('00_py_data_set.tsv', sep='\t')
df.dtypes # shows the type for each column
df.info() # alternative (more informative)
df['Age'] = df['Age'].astype(str) # types as above
