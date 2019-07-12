## Filtering based on values in a column
# base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df = df %>% filter(Age > 20)

df = subset(df, Age > 20)

# data.table
library(data.table)
dt = fread('00_R_data_set.tsv')
dt = dt[Age > 20]


## Drop specific columns
# base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df = df %>% select(-Age)

df$Age = NULL

# data.table
library(data.table)
dt = fread('00_R_data_set.tsv')
dt = dt[, Age:=NULL]


## Drop specific rows
# base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df[-1, ] # drops the first row


## Bonus: filter for NAs
# base and/or tidyverse
library(tidyverse)
df = read_tsv('00_R_data_set.tsv')
df[1, 1] = NA # set NA
df %>% filter(is.na(Name)) # only NAs
df %>% filter(!is.na(Name)) # only non-NAs

# data.table
library(data.table)
dt = fread('00_R_data_set.tsv')
dt[1, 1] = NA # set NA
dt[complete.cases(dt)]
