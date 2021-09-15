## Load package
library(bnlearn)
library(bnTool)

#library(devtools)
#install_github('vbjc5275/bnTool')


data(coronary)
bn_model = tabu(coronary)
create_from_to_viewer(bn_model)
create_child_parent_viewer(bn_model)


# test
names(bn_model$nodes)
bn_model$nodes$Smoking["parents"]

bn_model$nodes[["Pressure"]]["parents"]

length(bn_model$nodes[["Pressure"]][["parents"]])
bn_model$nodes[["Pressure"]]
# 

child_to_parent = list() 
bn_model$nodes
the_node = "Pressure"
current_list = list(the_node)
a = find_parent(bn_model,the_node,current_list)


get_par = function(bn_model,node){
  return(bn_model$nodes[[node]][["parents"]])
}

find_parent = function(bn_model,the_node,current_path){
  cat("the_node",the_node)
  cat("\n")
  parents = get_par(bn_model,the_node)
  
  if(length(parents) == 0){
    child_to_parent[[length(child_to_parent)+1]] = current_path
    return()
  }
  
  for (parent in parents) {
    cat("parent",parent)
    cat("\n")
    child_to_parent[[length(child_to_parent)+1]] = current_path
    new_path = current_path
    find_parent(bn_model,parent,new_path)
  }
  
  return(child_to_parent)
}

find_specific_paths = function(bn_model,from,to){
  
}

a = list(c(1,2,3))
a[1][4] = 5
a

a[[1]][4] = 4
b = duplicate(a)

a
b = a
b[[1]] = 99
b
a
