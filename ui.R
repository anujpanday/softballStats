library(shiny)
library(ggplot2)
library(rJava)
library(xlsx)


#setwd("C:/Users/apanday/Dropbox")





shinyUI(fluidPage( 
  selectInput('metric', 'Select Metric', c('G','AB', 'HR', 'X2B', 'X3B', 'BA', 'SLG', 'OPS'), selected='OPS'),
  plotOutput('chart'),
  textOutput('blank'),
  dataTableOutput('table')
))