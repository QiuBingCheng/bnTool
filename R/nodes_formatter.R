#' A Bn Model Viewer Function
#'
#' This function create a child-parent dataframe of bn model nodes. 
#' @param bn model & delimiter
#' @keywords delimiter
#' @return child-parent dataframe
#' create_child_parent_viewer()

create_child_parent_viewer <- function (bn_model,delimiter="|"){
  nodes = c()
  parents = c()
  num = length(bn_model$nodes)
  
  for (i in seq(1,num)) {
    node = names(bn_model$nodes[i])
    parent = bn_model$nodes[i][[node]][["parents"]]
    nodes = append(nodes,node)
    parents = append(parents,paste(parent,collapse=delimiter))
  }
  return (data.frame(nodes,parents))
}

#' A Bn Model Viewer Function
#'
#' This function create a from-to dataframe of bn model nodes. 
#' @param bn model 
#' @return from-to dataframe
#' create_from_to_viewer()

create_from_to_viewer <- function (bn_model){
  num = length(bn_model$nodes)
  df = as.data.frame(matrix(rep(0,num*num),ncol=num,nrow=num),
                              row.names = names(bn_model$nodes))
  names(df) = names(bn_model$nodes)
  
  for (i in seq(1,num)) {
    for (par in parent) {
      df[par,node] = 1
    }
  }
  return(df)
}