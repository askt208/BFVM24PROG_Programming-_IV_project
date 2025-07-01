library(shiny)
library(tidyverse)
library(janitor)

ui <- fluidPage(
  titlePanel("Adult Income Dashboard"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("age", "Select Age Range", min = 17, max = 90, value = c(30, 50)),
      selectInput("income", "Income Group", choices = c("<=50K", ">50K"))
    ),
    mainPanel(
      textOutput("selected"),
      plotOutput("hoursPlot")
    )
  )
)

server <- function(input, output) {
  df <- read_csv("/Users/marywu/DSLS/BFVM24PROG_Programming-_IV_project/adult.csv") %>%
    clean_names() %>%
    mutate(across(where(is.character), as.factor))
  
  output$selected <- renderText({
    paste("You selected:", input$income, "in age", input$age[1], "to", input$age[2])
  })
  
  output$hoursPlot <- renderPlot({
    df %>%
      filter(age >= input$age[1], age <= input$age[2], income == input$income) %>%
      ggplot(aes(x = hours_per_week)) +
      geom_histogram(binwidth = 5, fill = "steelblue") +
      theme_minimal()
  })
}


shinyApp(ui, server)