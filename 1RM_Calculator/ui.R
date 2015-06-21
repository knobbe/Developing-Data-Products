library(shiny)  
 shinyUI( 
           pageWithSidebar( 
                     # Application title 
                     headerPanel("1RM Calculator"), 
                     sidebarPanel( 
                               numericInput('weight', 'Insert weight in pounds', 185) , 
                               numericInput('reps', 'Insert the max # of reps you performed at this weight', 10, min = 1, max = 99, step = 1), 
                               numericInput('max_input', 'Estimate your 1RM',250),
                               submitButton('Submit') 
                       ),  
                     mainPanel(
                              h3('Your 1RM is:',align="Center"), 
                                verbatimTextOutput("estimation"),
                              
                              h4('Background of Calculator',align="Center"),
                               p('The strength program, Wendler 5/3/1, includes a formula that calculates an estimated 1 rep max.'), 
                               p('The formula is: Weight + Weight x Reps x .0333'), 
                               p('This formula is implying your 1RM is 3.33% higher for every rep you do. However, This formula overestimates your true 1RM because if you were to input 1 rep for any given weight, the result would be Weight + Weight x .0333, which would clearly overstate your 1RM by 3.33%.'), 
                               p('Also, every individual is different and the formula cannot consider each individual scenario, SO......my formula for 1RM is the following'), 
                               tags$div( 
                                         tags$ul( 
                                                   tags$li('The Median of:'), 
                                                   tags$li('A:  Weight + Weight x (Reps - 1) x .033'), 
                                                   tags$li('B:  Your estimated 1RM')
                                           ) 
                               ), 
                             
                               h4('Below are your inputs',align="Center"),  
                               p('Weight:'), verbatimTextOutput("inputweight"), 
                               p('Max Reps:'), verbatimTextOutput("inputreps"), 
                               p('Estimated Max:'), verbatimTextOutput("inputmax")
                              )
                     
                    )
           
             )    

