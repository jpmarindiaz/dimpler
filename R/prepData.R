#' @export

prepData <- function(data, name, ...){
  colIds <- letters[1:ncol(data)]
  colNames <- names(data)
  #names(data) <- colIds

  if(name=="dimpleBarVer"){
    #name <- "dimpleBarVer"
    dtype <- guessDtype(data)
    if(dtype %in% dimplerTtypes(name)){
      data <- transformData(data, name)
    } else{
      stop("Don't this dtype doesn't work for this dimple")
    }

  }

  list(data=data, colNames=colNames, colIds = colIds)
}

transformData <- function(data,name){
data
}

#' @export
availableDimples <- function(name){
  files <- list.files(system.file("htmlwidgets",package="dimpler"))
  files <- unique(file_path_sans_ext(files))
  files
}



guessTtype <- function(df)
{
  l <- lapply(df, function(c) {
    out <- "C"
    if (class(c) %in% c("integer", "numeric"))
      out <- "N"
    try({
      c <- as.Date(c)
      c <- as.POSIXct(c)
    }, silent = TRUE)
    if (class(c)[1] %in% c("Date", "POSIXt", "POSIXct"))
      out <- "D"
    out
  })
  unlist(paste(l, collapse = ""))
}

dimplerTtypes <- function(name){
  dir <- system.file("htmlwidgets",package="dimpler", mustWork=TRUE)
  dir <- "inst/htmlwidgets"
  l <- yaml.load_file(file.path(dir,paste0(name,".yaml")))
  l$meta[[1]]$dtype
}
