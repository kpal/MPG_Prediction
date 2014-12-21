library(shiny)

shinyServer(
    function(input, output) {
        output$oid1 <- renderText({
            data(mtcars)
            mtcars$cyl <- factor(mtcars$cyl)
            mtcars$am <- factor(mtcars$am)
            modelFit <- lm(mpg~cyl+hp+wt+am, data=mtcars)
        
            wt <- input$id1
            hp <- input$id2
            cyl <- input$id3
            am <- input$id4
        
            newData <- data.frame(wt=wt, hp=hp, cyl=cyl, am=am)
            pred <- predict(modelFit, newData)
            pred
        })
    }
)