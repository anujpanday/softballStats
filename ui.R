library(shiny)
library(ggplot2)
library(xlsx)

setwd("C:/Users/apanday/Dropbox")


stats<-read.csv('softballStats.csv')


shinyUI(fluidPage( 
  selectInput('metric', 'Select Metric', c('G','AB', 'HR', 'X2B', 'X3B', 'BA', 'SLG'), selected='BA'),
  plotOutput('chart')
))