library(shiny)
library(UsingR)
data(galton)
calculatevariance <- function(sd2) sd2*sd2
shinyServer(
  function(input,output){
    output$inputmu=renderPrint({input$mu})
    output$inputsd=renderPrint({input$sd})
    output$inputvar=renderPrint({calculatevariance(input$sd)})
    output$histogram=renderPlot({
      x=rnorm(1000,mean=input$mu,sd=input$sd)
      hist(x,xlab='x',col='lightblue',main='HISTOGRAM',breaks=30)
      mu=input$mu
      sd=input$sd
      v=calculatevariance(sd)
      lines(c(mu,mu),c(0,200),col="red",lwd=5)
      lines(c(mu-sd,mu+sd),c(5,5),col="red",lwd=5)
      text(10,10,paste("variance = ", round(v,2)))
    })
  }
  )