## Replacing one column
# Using base and/or tidyverse functions
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df$Name = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')

df[, 1] = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')

df[[1]] = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')


## Replacing one row
# Using base and/or tidyverse functions
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df$Name = as.character(df$Name) # necessary to prevent NA in next step
df[1, ] = c('Argon', 1, 'No', FALSE)

# Using the data.table(DT) package
library(data.table)
dt = fread('00_R_data_set.tsv')
namelist = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')
dt[, Name := namelist]


## Replacing a single cell
# Using base and/or tidyverse functions
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df$Name[1] = 'Argon'

df[1, 1] = 'Argon'
