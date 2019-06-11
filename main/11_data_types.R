## Basic data types
# Check the type
typeof(1) # double
typeof('1') # character
typeof(TRUE) # logical
is.numeric(1) # true
is.character('1') # true

# Set the type
as.numeric('1') # 1
as.character(1) # '1'
as.logical(0) # false
as.factor(1) # 1; levels: 1

## Data types in columns
# Using base and/or tidyverse functions
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
str(df) # get info one data types
df$Age = as.character(df$Age)
