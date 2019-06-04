## Filtering based on values in a column
# Using base and/or tidyverse functions
library(tidyverse)
df = df %>% filter(Age > 20)

df = subset(df, Age > 20)

# Using the data.table(DT) package
library(data.table)
dt = dt[Age > 20]


## Drop specific columns
# Using base and/or tidyverse functions
library(tidyverse)
df = df %>% select(-Age)

df$Age = NULL

# Using the data.table(DT) package
library(data.table)
dt = dt[, Age:=NULL]


## Drop specific rows
# Using base and/or tidyverse functions
library(tidyverse)
df[-1, ] # drops the first row


## Bonus: filter for NAs
# Using base and/or tidyverse functions
library(tidyverse)
df[1, 1] = NA # set NA
df %>% filter(is.na(Name)) # only NAs
df %>% filter(!is.na(Name)) # only non-NAs

# Using the data.table(DT) package
library(data.table)
dt[1, 1] = NA # set NA
dt[complete.cases(dt)]