## Accessing a single column
# Using base and/or tidyverse functions
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df$Name # column one ('Name')

df[, 1] # column one ('Name') # basically all rows, column one

select(df, Name) # select column one ('Name)

df[[1]] # column one ('Name)


## Accessing a single row
# Using base and/or tidyverse functions
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df[1, ] # row one # basically row one, all columns

# Using the data.table (DT) package
library(data.table)
dt = fread('00_R_data_set.tsv')
dt[, Name]
first(dt) # only works for first row
last(dt) # only works for last row


## Accessing a single cell
# Using base and/or tidyverse functions
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df$Name[1] # cell in column one ('Name'), row one ['Alfred']

df[1, 1] # cell in row one, column one ('Name') ['Alfred']
