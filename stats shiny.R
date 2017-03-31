library(shiny)
library(ggplot2)
library(xlsx)

setwd("C:/Users/apanday/Dropbox")


stats<-read.csv('softballStats.csv')

stats
ui<-fluidPage( 
  selectInput('metric', 'Select Metric', c('G','AB', 'HR', 'X2B', 'X3B', 'BA', 'SLG'), selected='BA'),
  plotOutput('chart')
)

server<-function(input, output) {
  attach(stats)
  output$chart<-renderPlot({
              ggplot(data=stats, aes_string(x=Players, y=input$metric, 
                                     fill=stats$Players))+
                geom_bar(stat='identity')+
                
                theme(legend.position='none', axis.title.x=element_blank())
  
                
                          })
}

shinyApp(ui=ui, server=server)