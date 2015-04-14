#' @export
availableDimpleFuns <- function(){
  Filter(function(f){grepl("^dimple",f)},ls("package:dimpler"))
}

#' @export
availableDimples <- function(ttype = NULL){

  if("data.frame" %in% class(ttype)) ttype <- guessTtype(ttype)
  if("Tblpkg" %in% class(ttype)) ttype <- getTtype(ttype)

  dir <- system.file("meta",package="dimpler", mustWork=TRUE)
  #dir <- "inst/htmlwidgets"
  files <- list.files(dir)
  files <- Filter(function(f){file_ext(f) == "yaml"},files)
  l <- lapply(files,function(name){
      l <- yaml.load_file(file.path(dir,name))
      l$meta[[1]]$ttype
  })
  names(l) <- file_path_sans_ext(files)
  d <- reshape2::melt(l)
  names(d) <- c("ttype","dimple")
  out <- d
  if(!is.null(ttype)){out <- d[d$ttype == ttype,]$dimple}
  out
}

