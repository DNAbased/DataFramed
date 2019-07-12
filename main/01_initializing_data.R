## Creating a data set
# base and/or tidyverse
library(tidyverse)
df = data.frame('Name' = c('Alfred', 'Batman', 'Charlie', 'Delta', 'Echo'), 
                 'Age' = c(99, 50, 30, 20, 0), 
                 'Random' = c('Yes', 'No', 'Yes', 'No', 'No'), 
                 'Interesting' = c(TRUE, TRUE, FALSE, FALSE, TRUE))

# data.table
library(data.table)
dt = data.table('Name' = c('Alfred', 'Batman', 'Charlie', 'Delta', 'Echo'), 
            'Age' = c(99, 50, 30, 20, 0),
            'Random' = c('Yes', 'No', 'Yes', 'No', 'No'), 
            'Interesting' = c(TRUE, TRUE, FALSE, FALSE, TRUE))


## Reading in data
# base and/or tidyverse
library(tidyverse)
df = read.delim('00_R_data_set.tsv')

df = read_tsv('00_R_data_set.tsv')

# data.table
library(data.table)
dt = fread('00_R_data_set.tsv')


## Writing data
# base and/or tidyverse
library(tidyverse)
write.table(df, '00_R_data_set_new.tsv', sep='\t', quote=FALSE, row.names=FALSE)

write_tsv(df, '00_R_data_set_new.tsv')

# data.table
library(data.table)
fwrite(dt, '00_R_data_set_new.tsv', sep='\t')
