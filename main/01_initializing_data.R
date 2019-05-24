## Creating a data set
# Using base and/or tidyverse functions
library(tidyverse)
df <- data.frame('Name' = c('Alfred', 'Batman', 'Charlie', 'Delta', 'Echo'), 
                 'Age' = c(99, 50, 30, 20, 0), 
                 'Random' = c('Yes', 'No', 'Yes', 'No', 'No'), 
                 'Interesting' = c(TRUE, TRUE, FALSE, FALSE, TRUE))

# Using the data.table (DT) package
library(data.table)
df <- data.table('Name' = c('Alfred', 'Batman', 'Charlie', 'Delta', 'Echo'), 
            'Age' = c(99, 50, 30, 20, 0),
            'Random' = c('Yes', 'No', 'Yes', 'No', 'No'), 
            'Interesting' = c(TRUE, TRUE, FALSE, FALSE, TRUE))


## Reading in data
# Using base and/or tidyverse functions
library(tidyverse)
df <- read.delim('01_data_set.tsv')
df <- read_tsv('01_data_set.tsv')

# Using the data.table package
library(data.table)
df <- fread('01_data_set.tsv')


## Writing data
# Using base and/or tidyverse functions
library(tidyverse)
write.table(df, '01_data_set_new.tsv', sep='\t', quote=FALSE, row.names=FALSE)
write_tsv(df, '01_data_set_new.tsv')

# Using the data.table package
library(data.table)
fwrite(df, '01_data_set_new.tsv', sep='\t')
