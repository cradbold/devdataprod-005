library(shiny)

datasets <- sapply(subset(data.frame(data()$results), Package=='datasets')$Item, as.character)
for (i in 1:length(datasets)) {
    datasets[i] <- unlist(strsplit(datasets[i], ' '))[1] # Strip trailing (explanation)
}
functs <- sort(c('summary', 'str', 'head', 'tail', 'print', 'class', 'names'))

shinyUI(
    pageWithSidebar(
        headerPanel(
            h1('Dataset Exploration')
        ),
        sidebarPanel(
            selectInput('dataset', 'Choose a dataset to load:', choices=datasets),
            selectInput('funct', 'Choose an R data function to apply:', choices=functs),
            helpText("Explore data from the 'datasets' library by viewing basic operations, a table, and plot.\n"),
            helpText("NOTE: tables and plots will only coerce where applicable for the dataset format.")
        ),
        mainPanel(
            tabsetPanel(
                tabPanel("Function", verbatimTextOutput('funct')),
                tabPanel("Table", tableOutput('tab')),
                tabPanel("Plot", plotOutput('plt'))
            )
        )
    )
)