library(shiny)

shinyServer(
    function(input, output) {
        output$oid1 <- renderText({
            if(input$id3 == '4')
                intercept <- 33.70832
            else if(input$id3 == '6')
                intercept <- 30.67698
            else if(input$id3 == '8')
                intercept <- 31.54464
            mpg <- intercept + as.numeric(input$id4)*1.80921 - input$id2*0.03211 - input$id1*2.49683
            mpg        
        })
    }
)