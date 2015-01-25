# Developing_Data_Products
This contains the Shiny application , Configurable Normal Distribution Grapher and the slidify documentation.
To use the application:
- download the distribution
- copy the contents to a folder
- start RStudio
- create a new project using existing directory
- select the directory with the copied contents

enter the following on the RStudio command line
- library(shiny)
- runApp()

If you do not have shiny installed type in 
install.packages("shiny")

And repeat the step above.

A browser window should display the application.
Select the mean and standard deviation and then hit submit.
The plot will be generated.
