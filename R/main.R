#' main_ui
#' @export
main_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns('main'))
}


#' main_server
#' @export
main_server <- function(input, output, session) {
  ns <- session$ns
  output$main <- renderUI({
    fluidPage(h4(id))
    selectizeInput(ns('selector'), 'Selectize Input', choices = c('a', 'b'), selected='a')
  })

}
