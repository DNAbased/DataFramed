## Adding a single column
# DataFrames, CSV
using DataFrames, CSV
df = CSV.read("main/00_jl_data_set.tsv")
city = ["Bonn", "London", "Toronto", "Quito", "Reykjavik"]
insertcols!(df, 5, city=city)


## Adding a single row
# DataFrames, CSV
using DataFrames, CSV
df = CSV.read("main/00_jl_data_set.tsv")
df2 = DataFrame(Name = ["Fabulous"], Age = [71], Random = ["Yes"], Interesting = [true])
df = [df;df2]
