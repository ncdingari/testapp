library(shinySlickgrid)
library(ggplot2) # For diamonds data

shinyServer(function(input, output) {

  datasetInput <- reactive({
    switch(input$dataset,
           "rock" = rock,
           "pressure" = pressure,
           "mtcars" = mtcars,
           "diamonds" = diamonds)
  })

  output$view <- renderSlickgrid({
    datasetInput()
  })
})
