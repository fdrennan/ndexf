library(ndexf)

#' @export
ui <- function() {
    main_ui('main')
}
 #' server
 #' @export
server <- function(input, output) {
    callModule(main_server, 'main')
}

# Run the application
shinyApp(ui = ui, server = server)
