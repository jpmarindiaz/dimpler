#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
dimplerBarVer <- function(data, width = NULL, height = NULL) {

  colIds <- letters[1:ncol(data)]
  colNames <- names(data)
  #names(data) <- colIds

  # Convert to array of objects
  data <- apply(data, 1,function(r){
    as.list(r)
  })

  x = list(
    data = data,
    colIds = colIds,
    colNames = colNames
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'dimplerBarVer',
    x,
    width = width,
    height = height,
    package = 'dimpler',
    sizingPolicy = htmlwidgets::sizingPolicy(
      viewer.padding = 0,
      browser.fill = TRUE
    )
  )
}

#' Widget output function for use in Shiny
#'
#' @export
dimplerOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'sigma2', width, height, package = 'dimpler')
}

#' Widget render function for use in Shiny
#'
#' @export
renderDimpler <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, dimplerOutput, env, quoted = TRUE)
}
