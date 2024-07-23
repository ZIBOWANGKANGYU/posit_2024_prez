## Attempt 1: 
# Above is the UI and server code of calendar module. 
# Create code that does some basic server test.

## Attempt 2:
# Above is the UI and server code of calendar module. 
# Create code that does some basic server test.
# Refer to the documentation here: https://shiny.posit.co/r/articles/improve/server-function-testing/
# Refer to the explanation here: https://mastering-shiny.org/scaling-testing.html#modules, for the correct structure of serve tests. 

## Attempt 3: 
#
# Example: 
# summaryUI <- function(id) {
#   tagList(
#     outputText(ns(id, "min")),
#     outputText(ns(id, "mean")),
#     outputText(ns(id, "max")),
#   )
# }
# summaryServer <- function(id, var) {
#   stopifnot(is.reactive(var))
#   
#   moduleServer(id, function(input, output, session) {
#     range_val <- reactive(range(var(), na.rm = TRUE))
#     output$min <- renderText(range_val()[[1]])
#     output$max <- renderText(range_val()[[2]])
#     output$mean <- renderText(mean(var()))
#   })
# }
# Above is summaryUI and summarServer. Below is an simple example of server test:

# test_that("output updates when reactive input changes", {
#   x <- reactiveVal()
#   testServer(summaryServer, args = list(var = x), {
#     x(1:10)
#     session$flushReact()
#     expect_equal(range_val(), c(1, 10))
#     expect_equal(output$mean, "5.5")
#     
#     x(10:20)
#     session$flushReact()
#     expect_equal(range_val(), c(10, 20))
#     expect_equal(output$min, "10")
#   }) 
# })
