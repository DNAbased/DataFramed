## Adding a single column
## base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
city = c('Bonn', 'London', 'Toronto', 'Quito', 'Reykjavik')
df$City = city

df = add_column(df, City = city)

df[, 5] = city; colnames(df[, 5]) <- 'City'

df = cbind(df, city); colnames(df[5]) <- 'City'

# data.table
library(data.table)
dt = fread('00_R_data_set.tsv')
dt[, City := city]


## Adding a single row
# base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
new_row = data.frame('Name'='Fabulous', 'Age'=71, 'Random'='Yes', 'Interesting'=TRUE)
df = bind_rows(df, new_row)

df = add_row(df, 'Name'='Fabulous', 'Age'=71, 'Random'='Yes', 'Interesting'=TRUE)

df = rbind(df, new_row)

# data.table
library(data.table)
dt = fread('00_R_data_set.tsv')
NA # ?
