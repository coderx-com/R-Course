library(shiny)

shinyServer(function(input, output) {
  
  bmi_calc <- eventReactive(input$calculate, {
    height_m <- input$height / 100
    bmi <- input$weight / (height_m^2)
    round(bmi, 2)
  })
  
  output$bmiResult <- renderText({
    req(bmi_calc())
    bmi_calc()
  })
  
  output$bmiCategory <- renderText({
    req(bmi_calc())
    bmi <- bmi_calc()
    if (bmi < 18.5) {
      "Underweight"
    } else if (bmi < 24.9) {
      "Normal weight"
    } else if (bmi < 29.9) {
      "Overweight"
    } else {
      "Obese"
    }
  })
})
