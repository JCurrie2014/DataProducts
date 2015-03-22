#User interface for Shiny app using fluidPage template

shinyUI(fluidPage(
        h2(a("Pitch", href="buscal.html")),
        h2(a("Documentation", href="documentation.html")),
        h5("This application converts Gregorian dates (western calendar designed in 1582) into “Modern Time Units” (MTUs). MTUs consist of 100 time units per year with the beginning of time starting being 1/1/2000. Each time unit is 3.6525 Gregorian calendar days (365.25 days/ 100). "),
        h5("Select a year (the default is the current year) and move the thumb on the slider to inspect the time frames. The slider contains three years of MTUs starting at year 15 (2015). On the right, you can see the chosen year, MTU and Gregorian dates change as you move the slider along the time line."),
        h5("(Note: Use the arrow keys <--> to fine tune MTU selection, rather than scrolling the thumb)"),      
        titlePanel("Business Calendar"),
        fluidRow(
                column(3, wellPanel(
                        #Create Dropdown menu for year selection
                        selectInput(inputId = "n_years",
                                    label = "Select Year:",
                                    choices = c(0:99),
                                    selected = 15),
                        #Create Slider for selecting Time Units
                        sliderInput("n", "Modern Time Units:", min = 0, max = 300, value = 0,
                                    step = 1)
                )),
                column(6,
                       verbatimTextOutput("text"),
                       verbatimTextOutput("text1"),
                       verbatimTextOutput("text2")
                )
        )
))
