library(data.table)

dt = data.table(id=1:1e2, x=rnorm(1e2))
fwrite(dt, file="data/normalSample.csv")
