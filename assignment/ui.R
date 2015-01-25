shinyUI(
pageWithSidebar(
  #Matts Incredible Predictor
  headerPanel("Configurable Normal Distribution"),
  sidebarPanel(
    ##numericInput('glucose','Gluscoe mg/dl', 90, min=50,max=200,step=5),
    sliderInput('mu','enter the mean',value=70,min=62,max=74,step=.05),
    sliderInput('sd','enter the standard deviation',value=70,min=1,max=20,step=.05),
    submitButton('submit')
    ),
  mainPanel(
    h3('Results '),
    h4('You Entered mean='),
    verbatimTextOutput("inputmu"),
    h4('You Entered sd='),
    verbatimTextOutput("inputsd"),
    h4('server claculated variance'),
    verbatimTextOutput("inputvar"),
    plotOutput("histogram")
    )
  )
)
