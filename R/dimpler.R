#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
dimpler <- function(data, name, width = NULL, height = NULL) {

  if(!name %in% availableDimples()) stop("No dimple exists with that name, check currently available dimples with: availableDimples()")

  d <- prepData(data, name)

  data <- d$data
  colNames <- d$colNames
  colIds <- d$colIds

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
    name = name,
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
  shinyWidgetOutput(outputId, 'dimple', width, height, package = 'dimpler')
}

#' Widget render function for use in Shiny
#'
#' @export
renderDimpler <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, dimplerOutput, env, quoted = TRUE)
}
