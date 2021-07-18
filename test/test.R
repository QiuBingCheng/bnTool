## Load package
library(bnlearn)
library(bnTool)

library(devtools)
install_github('vbjc5275/bnTool')


data(coronary)
bn_model = tabu(coronary)
create_from_to_viewer(bn_model)
create_child_parent_viewer(bn_model)
