stats<-read.csv('softballStats.csv')

server<-function(input, output) {
  attach(stats)
  
  output$chart<-renderPlot({
    ggplot(data=stats, aes_string(x=stats$Players, y=input$metric, 
                                  fill=stats$Players))+
      geom_bar(stat='identity')+
      theme(legend.position='none', axis.title.x=element_blank(), axis.text=element_text(size=12, face='bold'))
  })
  
  output$blank<-renderText('Data Table')
  output$table<-renderDataTable(stats)
 
}


