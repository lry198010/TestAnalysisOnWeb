library(shiny)

area <- list("贵阳一中"="001","中天中学"="002")

shinyUI(fluidPage(
  titlePanel("Test Data analysis by Web"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "bins",
        "Number of bins",
        min = 1,
        max = 100,
        value=20,
        width='100px'
      ),
      dateInput('datein',"Date",NULL),
      selectInput("area","area",area,multiple=TRUE)
    ),
    mainPanel(
     plotOutput("histPlot1")
    )
  )
))
