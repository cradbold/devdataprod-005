library(shiny)
library(datasets)

shinyServer(function(input, output) {
    datasetInput <- reactive({
        dataset <- get(input$dataset)
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
    output$tab <- renderTable({
        dataset <- datasetInput()
        c <- class(dataset)
        if (c %in% c('ts', 'list', 'table', 'factor', 'numeric', 'character')) { 
            dataset <- as.data.frame(dataset)
        }
        return(dataset)
    })
    output$plt <- renderPlot({
        dataset <- datasetInput()
        c <- class(dataset)
        if (c %in% c('list', 'character')) { 
            dataset <- as.data.frame(dataset)
        }
        return(plot(dataset))
    })
})