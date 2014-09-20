library(shiny)
library(datasets)

shinyServer(function(input, output) {
    datasetInput <- reactive({
        get(input$dataset)
    })
    output$funct <- renderPrint({
        dataset <- datasetInput()
        switch(input$funct,
               'summary'=summary(dataset), 
               'str'=str(dataset), 
               'head'=head(dataset), 
               'tail'=tail(dataset), 
               'print'=print(dataset),
               'class'=class(dataset),
               'names'=names(dataset))
    })
})