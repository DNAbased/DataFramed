## Functions
def df_wrangler(df, value=10):
    import pandas as pd
    random_row = df.sample(n=1).reset_index()
    if random_row.at[0, 'Interesting']:
        print(random_row.at[0, 'Name'] + ' is interesting. BTW, you set the value as ' + str(value) + '.')
    else:
        print(random_row.at[0, 'Name'] + ' is not interesting. BTW, you set the value as ' + str(value) + '.')
