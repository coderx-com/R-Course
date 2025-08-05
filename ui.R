library(shiny)

shinyUI(fluidPage(
  titlePanel("BMI Calculator"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("weight", "Weight (kg):", value = 70, min = 1),
      numericInput("height", "Height (cm):", value = 170, min = 1),
      actionButton("calculate", "Calculate BMI")
    ),
    
    mainPanel(
      h3("Your Body Mass Index is:"),
      verbatimTextOutput("bmiResult"),
      h4("BMI Category:"),
      verbatimTextOutput("bmiCategory"),
      
      br(),
      h5("How to use:"),
      p("Enter your weight in kilograms and height in centimeters, then click 'Calculate BMI'. The app will display your BMI and the corresponding category.")
    )
  )
))
