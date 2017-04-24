
shinyServer(function(input, output){
  file <- reactive ({ 
    x <- input$bed
    x = data.frame(annotateBedFromDb(x$datapath, db = txdb))
  })
  
  output$table1 <- renderDataTable(
    file()
  )
})