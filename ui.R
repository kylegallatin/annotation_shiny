library(shinydashboard)

shinyUI(dashboardPage(
  dashboardHeader(title = 'HG19 bed file analysis'),
  dashboardSidebar(
    sidebarUserPanel('Envisagenics', image = 'envisagenics_owler_20160302_231049_original.jpg'),
    sidebarMenu(
      menuItem("File Input", tabName = 'input', icon = icon("beer")),
      menuItem("Table", tabName = 'table', icon = icon('table')))),
    dashboardBody(
      tabItems(
        tabItem(tabName = "input",
                fluidRow(fileInput(inputId = 'bed', label = "Choose a .bed file", accept = c('.bed')))),
        tabItem(tabName = 'table',
                fluidRow(dataTableOutput("table1")))
         ))
    
    
  ))