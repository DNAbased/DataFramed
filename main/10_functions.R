## Functions
df_wrangler = function(df, value=10) {
  random_number = round(runif(n = 1, min = 1, max = nrow(df)))
  random_row = df[random_number,]
  if (random_row$Interesting) {
    return(paste(random_row$Name, ' is interesting. BTW, you set the value as ', value, '.', sep=''))
  } else {
    return(paste(random_row$Name, ' is not interesting. BTW, you set the value as ', value, '.', sep=''))
  }
}
