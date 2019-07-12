## Adding new observations
# base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df2 = data.frame('Name' = c('Fabulous', 'Git', 'Hub'),
                 'Age' = c(71, 8, 19),
                 'Random' = c('Yes', 'Yes', 'No'),
                 'Interesting' = c(TRUE, FALSE, FALSE))
df = rbind(df, df2)

# data.table
library(data.table)
dt = fread('00_R_data_set.tsv')
dt2 = data.table('Name' = c('Fabulous', 'Git', 'Hub'),
                 'Age' = c(71, 8, 19),
                 'Random' = c('Yes', 'Yes', 'No'),
                 'Interesting' = c(TRUE, FALSE, FALSE))
dt = rbindlist(list(dt, dt2), use.names=TRUE, fill=TRUE, idcol=NULL)


## Adding new variables (left join)
# base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df2 = data.frame('Name' = c('Alfred', 'Batman', 'Charlie', 'Delta', 'Echo'),
                 'City' = c('Bonn', 'London', 'Toronto', 'Quito', 'Reykjavik'))
df %>% inner_join(df2, by = 'Name')

# data.table
library(data.table)
dt = fread('00_R_data_set.tsv')
dt2 = data.table('Name' = c('Alfred', 'Batman', 'Charlie', 'Delta', 'Echo'),
                 'City' = c('Bonn', 'London', 'Toronto', 'Quito', 'Reykjavik'))
dt = dt[dt2, on='Name']
