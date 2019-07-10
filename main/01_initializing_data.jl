## Creating a data set
# DataFrames
using DataFrames
df = DataFrame(Name = ["Alfred", "Batman", "Charlie", "Delta", "Echo"], 
Age = [99, 50, 30, 20, 0], 
Random = ["Yes", "No", "Yes", "No", "No"], 
Interesting = [true, true, false, false, true])


## Reading in data
# CSV
using CSV
df = CSV.read("main/00_jl_data_set.tsv")


## Writing data
# CSV
using CSV
CSV.write("main/00_jl_data_set_new.tsv", df , delim="\t")