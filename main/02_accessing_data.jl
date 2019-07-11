## Accessing a single column
# DataFrames
using DataFrames, CSV
df.Name # column one ('Name')
df[1] # column one ('Name')

## Accessing a single row
# DataFrames
using DataFrames, CSV
df[1, :] # first row

first(df) # only works for first row
last(df) # only works for last row


## Accessing a single cell
# DataFrames
using DataFrames, CSV

df.Name[1] # cell in column one ('Name'), row one ['Alfred']
df[1, 1] # cell in row one, column one ('Name') ['Alfred']
df[1:1, 1:1] # as above but basically slicing, thus returning a dataframe
