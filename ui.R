library(shiny)

shinyUI(pageWithSidebar(
    headerPanel('Predict Miles per Gallon (MPG) value of your car!'),
    sidebarPanel(
        h3('Input details of the car'),
        numericInput('id1', 'Weight (in 1000 lbs)', 0.5, min=0.5, max=10, step=0.1),
        numericInput('id2', 'Horsepower', 50, min=50, max=500, step=5),
        radioButtons('id3', 'Number of Cylinders', c('4' = '4', '6' = '6', '8' = '8')),
        radioButtons('id4', 'Transmission Type', c('Automatic' = 'Automatic', 'Manual' = 'Manual')),
        submitButton('Submit')
    ),
    
    mainPanel(
        h4('Description'),
        p('This Shiny application predicts the MPG of a car based on the 
          following four parameters:'),
        tags$ul(
            tags$li('Weight of the car (in 1000 lbs)'),
            tags$li('Horsepower of the car'),
            tags$li('Number of cylinders in the car (4, 6 or 8)'),
            tags$li('Transmission type of the car (Automatic or Manual)')
        ),
        
        h4('Procedure'),
        tags$ul(
            tags$li('Input the car attributes.'),
            tags$li('Click the Submit button.'),
            tags$li('The predicted MPG value will be printed in the following textbox.')
        ),
        
        h4('Predicted MPG'),
        verbatimTextOutput('oid1'),
        
        h4('Disclaimer'),
        tags$ol(
            tags$li('This model works only if the number of cylinders in the car is
                    either 4, 6 or 8.'),
            tags$li('The predictions are based on parameters estimated from the 
                    "mtcars" dataset in R, which is a rather small dataset. So 
                    the error margin can be slightly high.')
        )
    )
))