## Adding new observations
# Using base and/or tidyverse functions
library(tidyverse)
df2 = data.frame('Name' = c('Fabulous', 'Git', 'Hub'),
                 'Age' = c(71, 8, 19),
                 'Random' = c('Yes', 'Yes', 'No'),
                 'Interesting' = c(TRUE, FALSE, FALSE))
df = rbind(df, df2)

# Using the data.table(DT) package
library(data.table)
dt2 = data.table('Name' = c('Fabulous', 'Git', 'Hub'),
                 'Age' = c(71, 8, 19),
                 'Random' = c('Yes', 'Yes', 'No'),
                 'Interesting' = c(TRUE, FALSE, FALSE))
dt = rbindlist(list(dt, dt2), use.names=TRUE, fill=TRUE, idcol=NULL)


## Adding new variables (left join)
# Using base and/or tidyverse functions
library(tidyverse)
df2 = data.frame('Name' = c('Alfred', 'Batman', 'Charlie', 'Delta', 'Echo'),
                 'City' = c('Bonn', 'London', 'Toronto', 'Quito', 'Reykjavik'))
df %>% inner_join(df2, by = 'Name')

# Using the data.table(DT) package
library(data.table)
dt2 = data.table('Name' = c('Alfred', 'Batman', 'Charlie', 'Delta', 'Echo'),
                 'City' = c('Bonn', 'London', 'Toronto', 'Quito', 'Reykjavik'))
dt = dt[dt2, on='Name']
