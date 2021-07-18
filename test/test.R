## Load package
library(bnlearn)
library(bnTool)

library(devtools)
install_github('vbjc5275/bnTool')

install.packages("vbjc5275/bnTool")

data(coronary)
bn_model = tabu(coronary)
bn_model
view = create_from_to_viewer(bn_model)


