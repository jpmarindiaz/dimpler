#' Creates a new Datatbl from a dataframe
#' @name dimpler
#' @description Graphs an input table a given dimple preset.
#' @param data is an object of class data.frame or Tblpkg
#' @return dimple visualizations from rcdimple package
#' @export
#' @examples \dontrun{
#'
#' }
dimpler <- function(data,name, width = NULL, height = NULL){
  if("Tblpkg" %in% class(data)){
    ttype <- getTtype(data)
    d <- getDataframe(data)
  } else if("data.frame" %in% class(data)){
    ttype <- guessTtype(data)
    d <- data
  } else{
    stop("Class of data must be data.frame or Tblpkg")
  }
  if(!name %in% availableDimples(ttype)) stop("Ttype for data doesn't have a working dimple.\n  To see working dimples for your data, use:\n  availableDimples(data)")
  do.call(name, list(data = d, width = width, height = height))
}
