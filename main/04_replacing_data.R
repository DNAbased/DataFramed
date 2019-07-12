## Replacing one column
# base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df$Name = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')

df[, 1] = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')

df[[1]] = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')


## Replacing one row
# base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df$Name = as.character(df$Name) # necessary to prevent NA in next step
df[1, ] = c('Argon', 1, 'No', FALSE)

# data.table
library(data.table)
dt = fread('00_R_data_set.tsv')
namelist = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')
dt[, Name := namelist]


## Replacing a single cell
# base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df$Name[1] = 'Argon'

df[1, 1] = 'Argon'
