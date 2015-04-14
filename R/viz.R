
#library(rcdimple)

#path <- system.file("data/dataCN.csv", package="dimpler")
#data <- read.csv(path)

##

#' @export
dimplePieCN <- function(data, width = NULL, height = NULL){
  v1 <- names(data)[1]
  v2 <- names(data)[2]
  g <- dimple(data, x= v2, type = "pie", y= v1, width = width, height = height )
  g <- xAxis(g, type = "addMeasureAxis", hidden = TRUE, ticks = 1, title = ""  )
  g <- default_colors(g,gray.colors(2) )
  g <- add_title(g,"my title")
  g
}

##### CN
#path <- system.file("data/dataCN.csv", package="dimpler")
#data <- read.csv(path)

#' @export
dimpleBarHorCN <- function(data, width = NULL, height = NULL){
  v1 <- names(data)[1]
  v2 <- names(data)[2]
  g <- dimple(data, x= v2, type = "bar", y= v1, width = width, height = height )
  g <- xAxis(g, type = "addMeasureAxis")
  g <- yAxis(g, type = "addCategoryAxis", orderRule = rev(as.character( data[v1] )))
  g
}

#' @export
dimpleBarVerCN <- function(data, width = NULL, height = NULL){
  v1 <- names(data)[1]
  v2 <- names(data)[2]
  g <- dimple(data, x= v1, type = "bar", y= v2, width = width, height = height )
  g <- xAxis(g, type = "addCategoryAxis", orderRule = rev(as.character( data[v1] )))
  g <- yAxis(g, type = "addMeasureAxis")
  g
}


# Bar Groped
#path <- system.file("data/dataCCN.csv", package="dimpler")
#data <- read.csv(path)

#' @export
dimpleBarHorGrpCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  g <- dimple(data, x= v2, type = "bar", y= c(v0,v1), groups=v1, width = width, height = height)
  g <- xAxis(g, type = "addMeasureAxis")
  g <- yAxis(g, type = "addCategoryAxis")
  g <- add_legend(g)
  g
}

#' @export
dimpleBarVerGrpCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  g <- dimple(data, x= c(v0,v1), type = "bar", y= v2, groups=v1, width = width, height = height)
  g <- yAxis(g, type = "addMeasureAxis")
  g <- xAxis(g, type = "addCategoryAxis")
  g <- add_legend(g)
  g
}

# Bar stacked

#' @export
dimpleBarVerStkCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  g <- dimple(data, x= v0, type = "bar", y= v2, groups=v1, width = width, height = height)
  g <- xAxis(g, type = "addCategoryAxis")
  g <- yAxis(g, type = "addMeasureAxis")
  g <- add_legend(g)
  g
}

#' @export
dimpleBarHorStkCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  g <- dimple(data, x= v2, type = "bar", y= v0, groups=v1, width = width, height = height)
  g <- xAxis(g, type = "addMeasureAxis")
  g <- yAxis(g, type = "addCategoryAxis")
  g <- add_legend(g)
  g
}

# Bar stacked nrm

#' @export
dimpleBarHorStkNrmCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  g <- dimple(data, x= v2, type = "bar", y= v0, groups=v1, width = width, height = height)
  g <- xAxis(g, type = "addPctAxis")
  g <- yAxis(g, type = "addCategoryAxis")
  g <- add_legend(g)
  g
}

#' @export
dimpleBarVerStkNrmCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  g <- dimple(data, x= v0, type = "bar", y= v2, groups=v1, width = width, height = height)
  g <- xAxis(g, type = "addCategoryAxis")
  g <- yAxis(g, type = "addPctAxis")
  g <- add_legend(g)
  g
}


# Bar grp stk
#path <- system.file("data/dataCCCN.csv", package="dimpler")
#data <- read.csv(path)

#' @export
dimpleBarHorGrpStkCCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  v3 <- names(data)[4]
  g <- dimple(data, x= v3, type = "bar", y= c(v0,v1), groups=v2, width = width, height = height)
  g <- xAxis(g, type = "addMeasureAxis")
  g <- yAxis(g, type = "addCategoryAxis")
  g <- add_legend(g)
  g
}

#' @export
dimpleBarHorGrpStkNrmCCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  v3 <- names(data)[4]
  g <- dimple(data, x= v3, type = "bar", y= c(v0,v1), groups=v2, width = width, height = height)
  g <- xAxis(g, type = "addPctAxis")
  g <- yAxis(g, type = "addCategoryAxis")
  g <- add_legend(g)
  g
}

#' @export
dimpleBarVerGrpStkCCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  v3 <- names(data)[4]
  g <- dimple(data, x= c(v0,v1), type = "bar", y= v3, groups=v2, width = width, height = height)
  g <- xAxis(g, type = "addCategoryAxis")
  g <- yAxis(g, type = "addMeasureAxis")
  g <- add_legend(g)
  g
}

#' @export
dimpleBarVerGrpStkNrmCCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  v3 <- names(data)[4]
  g <- dimple(data, x= c(v0,v1), type = "bar", y= v3, groups=v2, width = width, height = height)
  g <- xAxis(g, type = "addCategoryAxis")
  g <- yAxis(g, type = "addPctAxis")
  g <- add_legend(g)
  g
}

###

#' @export
dimpleAreaHorCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  g <- dimple(data, x= v1, type = "area", y= v2, groups=v0, width = width, height = height)
  g <- xAxis(g, type = "addCategoryAxis")
  g <- yAxis(g, type = "addMeasureAxis")
  g <- add_legend(g)
  g
}

#' @export
dimpleAreaHorNrmCCN <- function(data, width = NULL, height = NULL){
  v0 <- names(data)[1]
  v1 <- names(data)[2]
  v2 <- names(data)[3]
  g <- dimple(data, x= v1, type = "area", y= v2, groups=v0, width = width, height = height)
  g <- xAxis(g, type = "addCategoryAxis")
  g <- yAxis(g, type = "addPctAxis")
  g <- add_legend(g)
  g
}


####
#' @export
dimpleBubbleCN <- function(data, width = NULL, height = NULL){
  v1 <- names(data)[1]
  v2 <- names(data)[2]
  g <- dimple(data, x= v2, type = "pie", y= v1 , width = width, height = height)
  g <- xAxis(g, type = "addMeasureAxis", hidden = TRUE, ticks = 1, title = ""  )
  g <- yAxis(g, type = "addCategoryAxis", orderRule = rev(as.character( my_data$variable )), showGridlines = T)
  g <- default_colors(g,gray.colors(2) )
  g <- add_title(g,"my title")
  g
}


