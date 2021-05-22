suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
suppressWarnings(library(shinythemes))
shinyUI( 
        
        navbarPage(
              
                
                theme = shinytheme("cyborg"),
                "Data Science Specialization: Final Project",
                
                tabPanel("Predict the Next Word - Final Project",
                         HTML("<strong>Author: M P </strong>"),
                         br(),
                         HTML("<strong>Date: May 22 2021 </strong>"),
                         br(),
                         
                         # Sidebar
                         sidebarLayout(
                                 sidebarPanel(
                                         helpText("Please enter an incomplete sentence, to predict  the next word"),
                                         textInput("inputString", "Enter the partial sentence here",value = ""),
                                         br(),
                                         br(),
                                         br(),
                                         br()
                                 ),
                                 mainPanel(
                                         h2("Predicted Next Word"),
                                         verbatimTextOutput("prediction"),
                                         strong("Sentence Input:"),
                                         tags$style(type='text/css', '#text1 {background-color: pink ; color: firebrick;}'), 
                                         textOutput('text1'),
                                         br(),
                                         strong("Note:"),
                                         tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: firebrick;}'),
                                         textOutput('text2')
                                 )
                         )
                         
                ),
                tabPanel("App documentation",
                         mainPanel(
                                 img(src = "./headers.png", height="100px"),
                                 includeMarkdown("App documentation.Rmd")
                         )
                         
                ),
                tabPanel("How to use this application?",
                         mainPanel(
                                 img(src = "./headers.png", height="100px"),
                                 includeMarkdown("How to use the application.Rmd")
                         )
                ),
                tabPanel("How does it work?",
                         mainPanel(
                                 img(src = "./headers.png", height="100px"),
                                 includeMarkdown("How does it work.Rmd")
                         )
                ),
                tabPanel("References",
                         mainPanel(
                                 img(src = "./headers.png", height="100px"),
                                 includeMarkdown("References and GitHub Repository.Rmd")
                         )
                )
                
        )
)