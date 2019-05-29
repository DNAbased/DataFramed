## Replacing one column
# Using base and/or tidyverse functions
library(tidyverse)
df$Name = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')
df[, 1] = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')
df[[1]] = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')


## Replacing one row
# Using base and/or tidyverse functions
library(tidyverse)
df$Name = as.character(df$Name) # necessary to prevent NA in next step
df[1, ] = c('Argon', 1, 'No', FALSE)

# Using the data.table(DT) package
library(data.table)
namelist = c('Argon', 'Balloon', 'Chess', 'Duck', 'Exit')
dt[, Name := namelist]


## Replacing a single cell
# Using base and/or tidyverse functions
library(tidyverse)
df$Name[1] = 'Argon'
df[1, 1] = 'Argon'
