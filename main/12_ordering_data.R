## Ordering data
# Using base and/or tidyverse functions
library(tidyverse)
df = read_tsv('00_R_data_set_expanded.tsv')
df = df %>% arrange(desc(Age))

df = df[order(-df$Age), ]

# Using the data.table(DT) package
library(data.table)
dt = fread('00_R_data_set_expanded.tsv')
dt = dt[order(-Age)]
