library(shiny)  

 True_Max<-function(weight,reps,max_input){ 
           CalcMax <- weight + weight * (reps - 1) / 30
           (CalcMax + max_input) / 2
   } 

 shinyServer( 
           function(input, output) { 
                      
                     output$inputweight <- renderPrint({input$weight}) 
                     output$inputreps <- renderPrint({input$reps}) 
                     output$inputmax <- renderPrint({input$max_input}) 
                     output$estimation <- renderPrint({True_Max(input$weight,input$reps,
                                                                input$max_input)}) 
             }  
   ) 

