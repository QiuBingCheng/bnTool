## Load package
library(bnlearn)
library(data.table)

data = data(coronary)
bn_model = tabu(training_data, blacklist = blackList)
