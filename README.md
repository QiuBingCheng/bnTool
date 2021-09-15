# bnTool

the kit of bn package

## install the package 

```R
library(devtools)
install_github('vbjc5275/bnTool')
```

## bayesian network nodes viewer 

It create dataframe to help user read the nodes relationship easily

```R
data(coronary)
bn_model = tabu(coronary)
create_from_to_viewer(bn_model)
create_child_parent_viewer(bn_model)
```

![view](https://github.com/vbjc5275/bnTool/blob/main/image/view.png)







