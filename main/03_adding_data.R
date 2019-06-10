## Adding a single column
# Using base and/or tidyverse functions
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
city = c('Bonn', 'London', 'Toronto', 'Quito', 'Reykjavik')
df$City = city

df = add_column(df, City = city)

df[, 5] = city; colnames(df[, 5]) <- 'City'

df = cbind(df, city); colnames(df[5]) <- 'City'

# Using the data.table (DT) package
library(data.table)
dt = fread('00_R_data_set.tsv')
dt[, City := city]


## Adding a single row
# Using base and/or tidyverse functions
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
new_row = data.frame('Name'='Fabulous', 'Age'=71, 'Random'='Yes', 'Interesting'=TRUE)
df = bind_rows(df, new_row)

df = add_row(df, 'Name'='Fabulous', 'Age'=71, 'Random'='Yes', 'Interesting'=TRUE)

df = rbind(df, new_row)

# Using the data.table (DT) package
library(data.table)
dt = fread('00_R_data_set.tsv')
NA # ?
