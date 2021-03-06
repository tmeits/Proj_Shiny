
shinyUI(pageWithSidebar(
        headerPanel("Overfitting case study for Neural Networks Autoregressions"),
        sidebarPanel(
                sliderInput('lasttv', 'Guess last training year',value = 1980, min = 1960, max = 2000, step = 1,),
                h3('Purpose:'),
                h4('This App has been developed to understand the effect of overfitting
                   on forecast results. The model used is a neural network autorregression
                   with the training set from 1875 to the selected year. The test set is fixed 
                   to the next 30 years.'),
                h3('Usage:'),
                h4('The user can change the last year of the training set by moving the 
                   Slider Input Widget, and the application will retrain the model with the selected
                   data and change the selected forecast period accordingly. The change in 
                   accuracies in the training and test sets are printed as RMSE on the updated plot')
                ),
        mainPanel(
                plotOutput('newPlot')
        )
))