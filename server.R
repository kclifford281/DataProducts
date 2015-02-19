library(shiny) 

fval<-function(deposit,nyears,irate) {deposit*(1+(irate/100))^nyears}

shinyServer(
  function(input, output) {
    
    output$inputdepositvalue <- renderPrint({input$deposit})
    output$inputnyearsvalue <- renderPrint({input$nyears})
    output$inputiratevalue <- renderPrint({input$irate})
    
    output$finalValue <- renderPrint({fval(input$deposit,input$nyears,input$irate)})
  }
)