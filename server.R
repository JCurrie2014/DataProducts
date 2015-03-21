

shinyServer(function(input, output) {
       #Send output (right side of screen) showing number of MTUs 
        output$text1 <- renderText({paste("Modern Time Unit:", input$n) 
        })                      
        #Send output (right side of screen) showing year selection
        output$text <- renderText({
                paste("Select a Year after the beginning of time (1/1/2000):", input$n_years)
        })
        #Send output (right side of screen) showing year selection
        output$text2 <- renderPrint({
                #Add slider selection to year selection to create total selected MTU (decimal)
                nn<-as.numeric(input$n_years)+(.01*(as.numeric(input$n))) 
                #Calculate Gregorian date based upon MTU and place in final output (right side of screen)
                paste("MTU:", nn,"   Date:",as.Date((nn*365.25)+1,origin="2000/01/01"))

        }
         )

})