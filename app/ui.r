library(shiny)

shinyUI(fluidPage(
    titlePanel("Sum of a sequence of numbers"),
    
    sidebarLayout(
        sidebarPanel(
            h4("This app calculate the sum from number #1 to number #2"),
            sliderInput('num1',"Please input number #1:",min=1,max=10000,value=1),
            sliderInput('num2',"Please input number #2:",min=1,max=10000,value=10000)

        ),
        
        mainPanel(
            h3('The sum from number #1 to number #2 is'),
            textOutput('outnum'),
            br(),br(),
            actionButton("act1",label="Show Documentation"),
            actionButton("act2",label="Hide Documentation"),
            br(),br(),
            textOutput('outdoc')
    ))
))