library(shiny) 
shinyUI(
  pageWithSidebar(

    headerPanel("Simple Compound Interest Calculator"),
    
    sidebarPanel(
      numericInput('deposit', 'Initial Deposit', 100, min = 1, max = 1000000),
      numericInput('nyears', 'Number Of Years Invested',1, min = 1, max = 25),
      numericInput('irate', 'Interest Rate %',10, min = 1, max = 100),
      submitButton('Submit')
    ), 
    mainPanel(          
      h3('Note: Interest is only compounded once per yer'),
      h4('Taking into account the values entered by you:'),
       
      p('Initial Deposit:'), verbatimTextOutput("inputdepositvalue"),
      p('Number of Years Invested:'), verbatimTextOutput("inputnyearsvalue"),
      p('Interest Rate Percentage:'), verbatimTextOutput("inputiratevalue"),
      p('Final Value is:'),strong(verbatimTextOutput("finalValue"))      
    )
    
  )   
)