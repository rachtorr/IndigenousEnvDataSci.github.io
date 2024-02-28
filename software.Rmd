
# Getting started with R 

1. Download and install R and RStudio
    - Go to the [R website](https://www.r-project.org). Then, under the Getting Started section, click on the link that says download R.
    - R software is downloaded from a CRAN (Comprehensive R Archive Network) mirror. For the fastest download, scroll to your country, then select the CRAN link that is closest to you, geographically. For example, in Humboldt Co, California, USA the closest CRAN would be https://ftp.osuosl.org/pub/cran/, hosted by Oregon State University in Corvallis, Oregon, USA.
    - From your local CRAN, select the download link (“Download R for”) that matches your computer operating system (Windows, Mac).
        - **Windows**: Click the link that says install R for the first time. Then, within the gray box, click the link that says Download R x.y.z for Windows, where x, y, and z are different numbers that designate the current version of R. This should start the file download. Proceed normally as with any new PC program, following the automated download instructions.
        - **Mac**: Under the section labeled “Files”, click on the first blue link that ends in .pkg. This is the most recent R binary file. This should start the file download. Proceed normally as with any new Mac application, following the automated download instructions.

2. Go to the [RStudio website](https://www.rstudio.com/products/rstudio/download). Scroll to the bottom of the page.
    - Under Installers for Supported Platforms, select the link that matches your computer operating system (Windows, Mac) to download and install RStudio.
        - **Windows**: Double-click the .exe file and proceed normally as with any new PC program, following the automated install instructions.
        - **Mac**: Double-click the .dmg file; this will open a new window in your desktop. Drag the RStudio icon to the Applications folder to install it in your computer.


3. Install packages used in this workshop. Within R, researchers have developed “packages” that group together code and functions to allow you to easily perform different types of computing tasks. You’ll need to use multiple packages during the module activities, and it will be easiest to go ahead and install all of them ahead of time.

Now that R and RStudio are installed, open RStudio. The default window on the left of the screen is called the Console, and you can write commands in this window. The two windows on the right include tabs that you can view to see the history of code you’ve already run and your workspace, plots of figures you’ve made with your code, packages you’ve installed, and the files you have open in your working directory.

To install the packages, copy and paste the following lines of code to the right of the > in the Console, then press Enter. Note: You need to be connected to the internet to complete the package installation.

```
install.packages("tidyverse")
install.packages("janitor")
install.packages("lubridate")
```

As you’re installing the packages, you might see a lot of red output messages. However, you can check that they downloaded successfully by then running the following scripts to load the packages:

```
library(tidyverse)
library(janitor)
library(lubridate)
```
To check if the packages have installed correctly, navigate over to the “Packages” tab in the bottom right window of RStudio and see if there is a checked box next to tidyverse, janitor, and lubridate. Note that different workshops may require different packages, and you can always run `install.packages()` and `library()` to get new ones. 

The text in this section was adopted from the [MacrosystemsEDDIE Teaching Materials](https://macrosystemseddie.github.io/module1) in 'R You Ready for EDDIE? Module 1'. Check out their awesome work on modules for using R for ecological forecasting [here](https://serc.carleton.edu/eddie/macrosystems/index.html).

## Resources to keep learning R 

+ [Swirl Tutorials](https://swirlstats.com/) - R package makes it fun and easy to learn R programming and data science
+ R Textbooks (open access) - https://www.rstudio.com/resources/books/
  - [Hands-On Programming](https://rstudio-education.github.io/hopr/) with R by Garrett Grolemund - introduction to R 
  - [R for Data Science by Hadley Wickham (2nd Edition)](https://r4ds.hadley.nz/) - introduction to tidyverse and data visualization 
+ [Fundamentals of Data Visualization by Claus O. Wilke](https://clauswilke.com/dataviz/index.html) - not R specific, but is a great resources for communication with data visualization, and has many examples
+ [R Cheatsheets](https://www.rstudio.com/resources/cheatsheets/) - helpful pdfs that focus on commonly used packages including ggplot, lubridate, and more. Also available in [spanish](https://posit.co/resources/cheatsheets/?type=translations/)
+ [Stack Overflow](https://stackoverflow.com/) - need help troubleshooting or trying new methods? Search for common issues here, or post a question.
+ [Kaggle](https://www.kaggle.com/) - tutorials, workshops, and competitions to keep learning R, also includes Python

