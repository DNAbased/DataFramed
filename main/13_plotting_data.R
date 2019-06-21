## Creating plotting data
# Using base and/or tidyverse functions
library(tidyverse)
set.seed(65536)
scatter_data = arrange(data.frame(Values = round(runif(100)*100), 
                                  Random = rep(c('Yes', 'No', 'No', 'Yes', 'No'), 4)), 
                       Values)
bar_data = data.frame(Random = rep(c('Yes', 'No', 'No', 'Yes', 'No'), 4))
histo_data = scatter_data
box_data = scatter_data
line_data = scatter_data

## Plotting data
# Using base and/or tidyverse functions
library(tidyverse)
# scatter_plot
ggplot(scatter_data) + 
  geom_point(aes(x=seq_along(Values), y=Values, colour=Random)) + 
  labs(x='')

# bar_plot
ggplot(bar_data) + 
  geom_bar(aes(x=Random, fill=Random)) + 
  labs(y='')

# histogram
ggplot(histo_data) +
  geom_histogram(aes(x=Values, fill=Random)) +
  labs(y='')

# box_plot
ggplot(box_data) + 
  geom_boxplot(aes(x=Random, y=Values, colour=Random)) + 
  labs(x='')

# line_plot
ggplot(line_data) + 
  geom_line(aes(x=seq_along(Values), y=Values, colour=Random)) + 
  labs(x='')
