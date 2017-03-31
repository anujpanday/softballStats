server<-function(input, output) {
  attach(stats)
  output$chart<-renderPlot({
    ggplot(data=stats, aes_string(x=Players, y=input$metric, 
                                  fill=stats$Players))+
      geom_bar(stat='identity')+
      theme(legend.position='none', axis.title.x=element_blank(), axis.text=element_text(size=12, face='bold'))
    
    
  })
}