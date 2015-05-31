
library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Test Equation"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    textInput(inputId = "equation",
              label = "Input Equation",
              value = "0"
              )
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3("Result"),
    textOutput(outputId = "plot_text"),
    plotOutput(outputId = "plot")
  )
))
