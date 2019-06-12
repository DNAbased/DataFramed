## Ordering data
# Using pandas
import pandas as pd
df = pd.read_csv('00_py_data_set_expanded.tsv', sep='\t')
df = df.sort_values(by='Age', axis=0, ascending=True)
