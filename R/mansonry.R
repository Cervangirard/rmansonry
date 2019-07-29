#' Add mansory
#'
#' @export
#'
#' @import shiny
add_mansonry <- function() {
  shiny::tagList(
    shiny::tags$head(
      shiny::includeCSS(system.file("css/monsory.css", package = "rmansonry")),
      shiny::includeScript(system.file("js/mansonry.js", package = "rmansonry"))
    )
  )
}

#' Active mansory
#'
#' @param width adjust your column
#'
#' @export
#' @importFrom glue glue
#' @importFrom htmltools HTML
#'

active_mansonry <- function(width = "90"){
 shiny::tagList(
  shiny::tags$head(
    shiny::tags$style(
      HTML(
        glue::glue(".grid-item{width : <width>px}",
                   .open = "<",
                   .close = ">")
        )
      )
    ),
  shiny::tags$script(
    glue::glue(
      "
      $('.grid').masonry({
      itemSelector: '.grid-item',
      columnWidth: <width>,
      stagger: 30,
      isFitWidth: true,
      gutter: 10
      });",
.open = "<",
.close = ">"
    )
)
)
}

#' fuildGrid
#'
#' @param ... add column_grid
#'
#' @export
#'
fluidGrid <- function(...) {
  shiny::div(class = "grid", ...)

}

#' Add column in your fuildGrid
#'
#' @param ... add what you want in your column
#'
#' @export
#'
column_grid <- function(...) {
  shiny::div(class = "grid-item", ...)
}
