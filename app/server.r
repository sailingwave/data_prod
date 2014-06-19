library('shiny')

sum_seq <- function(x1,x2){
    (x1+x2)*(x2-x1+1)/2
}

doc = "Scroll the slidebars for number #1 and number #2, then this app will calculate the sum from number #1
to number #2."

n_act2 = 0

shinyServer(
    function(input, output) {
        output$outnum <- renderText({sum_seq(input$num1,input$num2)})
        output$outdoc <- renderText({
            if(input$act1==0 | n_act2!=input$act2){
                n_act2 <<- input$act2
                ""
            }else{
                doc
            }
        })
        
    }
)