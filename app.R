
library(shiny)
library(png)
library(shinythemes)
library(shinyWidgets)
library(rsconnect)


load("data.RData")
# Define UI for dataset viewer app ----
ui <- navbarPage("Worldwide Softball League",
                 tabPanel("Team Schedules",
                          fluidPage(theme = shinytheme("united"),setBackgroundColor(
                            color = "#F5F5F3",
                            gradient = c("linear", "radial"),
                            direction = c("bottom", "top", "right", "left"),
                            shinydashboard = FALSE
                          ),
                          #column(12,imageOutput("mascot")),
                          
                          # App title ----
                          titlePanel("Teams"),
                          
                          # Sidebar layout with input and output definitions ----
                          fluidRow(
                            
                            # Sidebar panel for inputs ----
                            column(3,
                                   selectInput("countries", choices = c(''), label = "Choose a team"),
                                   # Include clarifying text ----
                                   helpText(""),
                                   imageOutput("image1")
                                   
                            ),
                            
                            
                            # Main panel for displaying outputs ----
                            column(4, offset = 1,
                                   
                                   # Output: Header + table of distribution ----
                                   h3(uiOutput("header")),
                                   tableOutput("view")
                                   
                                   
                            ),
                            column(3,
                                   imageOutput("wsl"))
                            
                          )
                          )
                 ),
                 tabPanel("Weekly Schedule",
                          fluidPage(
                            
                            # App title ----
                            titlePanel("Weeks"),
                            
                            # Sidebar layout with input and output definitions ----
                            fluidRow(
                              column(2,
                                     selectInput("data", "Choose a week:",
                                                 choices = c("1","2","3","4","5","6","7","8","9")),
                                     helpText("")
                                     
                              ),
                              column(4, offset = 1,
                                     h3(uiOutput("head")),
                                     tableOutput("fs")
                              ),
                              column(3,
                                     imageOutput("wsl1"))
                              
                            )
                          )
                 )
)
locations <- c("Canada", "Sweden", "Iceland","Russia","Denmark","Japan","Antarctica","Australia","Chile","Argentina","Tahiti","Fiji")
# Define server logic to summarize and view selected dataset ----
server <- function(input, output, session) {
  
  updateSelectInput(session, "countries", choices = locations)
  
  countries <- reactive({
    switch(input$countries,
           "Canada" = Canada,
           "Iceland" = Iceland,
           "Sweden" = Sweden,
           "Russia" = Russia,
           "Denmark" = Denmark,
           "Japan" = Japan,
           "Antarctica" = Antarctica,
           "Australia" = Australia,
           "Argentina" = Argentina,
           "Chile" = Chile,
           "Tahiti" = Tahiti,
           "Fiji" = Fiji)
  })
  
  output$view <- renderTable({
    countries()
  }, spacing = "l")
  
  output$header <- renderUI({
    input$countries
  })
  
  
  output$image1 <- renderImage({
    
    if (input$countries == "Canada") {
      return(list(
        src = "www/Canada.png",
        contentType = "png",
        alt = "Flag",
        height = 125,
        width = 250
      ))
    }
    if (input$countries == "Sweden") {
      return(list(
        src = "www/Sweden.png",
        contentType = "png",
        alt = "Flag",
        height = 150,
        width = 250
      ))
    }
    if (input$countries == "Iceland") {
      return(list(
        src = "www/Iceland.png",
        contentType = "png",
        alt = "Flag",
        height = 150,
        width = 250
      ))
    }
    if (input$countries == "Denmark") {
      return(list(
        src = "www/Denmark.png",
        contentType = "png",
        alt = "Flag",
        height = 150,
        width = 250
      ))
    }
    if (input$countries == "Japan") {
      return(list(
        src = "www/Japan.png",
        contentType = "png",
        alt = "Flag",
        height = 150,
        width = 250
      ))
    }
    if (input$countries == "Russia") {
      return(list(
        src = "www/Russia.png",
        contentType = "png",
        alt = "Flag",
        height = 150,
        width = 250
      ))
    }
    if (input$countries == "Antarctica") {
      return(list(
        src = "www/Antarctica.png",
        contentType = "png",
        alt = "Flag",
        height = 150,
        width = 250
      ))
    }
    if (input$countries == "Australia") {
      return(list(
        src = "www/Australia.png",
        contentType = "png",
        alt = "Flag",
        height = 125,
        width = 250
      ))
    }
    if (input$countries == "Argentina") {
      return(list(
        src = "www/Argentina.png",
        contentType = "png",
        alt = "Flag",
        height = 125,
        width = 250
      ))
    }
    if (input$countries == "Chile") {
      return(list(
        src = "www/Chile.png",
        contentType = "png",
        alt = "Flag",
        height = 150,
        width = 250
      ))
    }
    if (input$countries == "Fiji") {
      return(list(
        src = "www/Fiji.png",
        contentType = "png",
        alt = "Flag",
        height = 125,
        width = 250
      ))
    }
    if (input$countries == "Tahiti") {
      return(list(
        src = "www/Tahiti.png",
        contentType = "png",
        alt = "Flag",
        height = 150,
        width = 250
      ))
    }
  }, deleteFile = FALSE)
  
  weeks <- reactive({
    switch(input$data,
           "1" = Week1,
           "2" = Week2,
           "3" = Week3,
           "4" = Week4,
           "5" = Week5,
           "6" = Week6,
           "7" = Week7,
           "8" = Week8,
           "9" = Week9)
  })
  
  output$fs <- renderTable({
    weeks()
  }, spacing = "l")
  
  output$head <- renderUI({
    paste("Week ", input$data)
  })
  
  output$mascot <- renderImage({
    
    if (input$countries == "Canada") {
      return(list(
        src = "www/CanadaM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
    if (input$countries == "Sweden") {
      return(list(
        src = "www/SwedenM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
    if (input$countries == "Iceland") {
      return(list(
        src = "www/IcelandM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
    if (input$countries == "Denmark") {
      return(list(
        src = "www/DenmarkM.png",
        contentType = "image/png",
        alt = "Face"
      ))
    }
    if (input$countries == "Japan") {
      return(list(
        src = "www/JapanM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
    if (input$countries == "Russia") {
      return(list(
        src = "www/RussiaM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
    if (input$countries == "Antarctica") {
      return(list(
        src = "www/AntarcticaM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
    if (input$countries == "Australia") {
      return(list(
        src = "www/AustraliaM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
    if (input$countries == "Argentina") {
      return(list(
        src = "www/ArgentinaM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
    if (input$countries == "Chile") {
      return(list(
        src = "www/ChileM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
    if (input$countries == "Fiji") {
      return(list(
        src = "www/FijiM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
    if (input$countries == "Tahiti") {
      return(list(
        src = "www/TahitiM.png",
        contentType = "png",
        alt = "Face"
      ))
    }
  }, deleteFile = FALSE)
  
  output$wsl <- renderImage({
    return(list(
      src = 'www/WSL1.png',
      contentType = "png",
      alt = "WSL",
      width = 300
    ))
  }, deleteFile = FALSE)
  
  output$wsl1 <- renderImage({
    return(list(
      src = 'www/WSL1.png',
      contentType = "png",
      alt = "WSL",
      width = 300
    ))
  }, deleteFile = FALSE)
}



# Create Shiny app ----
shinyApp(ui = ui, server = server)

#deployApp()
