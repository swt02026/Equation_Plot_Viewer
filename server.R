library(shiny)
library(datasets)

x=seq(from = 0,to=10)
# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  
  
  
  reac_plot_text <- reactive({
    input$equation
  })
  output$plot_text<-renderText({
    
    reac_plot_text()
  })
  
  
  output$plot<-renderPlot({
    y = eval(
        expr=parse(
          text=input$equation
          )
      )
    if(length(y) !=length(x))
    {
      y = rep(each=length(x),y)
    }
    plot(x,y)
  })
})
