
# Environmental Justice modules {#EJ-section}

These modules teach introductory data science in R using case studies from [K'avi tibal](#water-section) land and water managers. Stories of managing resources for community and environmental health are used to guide steps in the data science process. Modules 1-3 are currently being used for labs in a sophomore level Introduction to R Statistics course at Salish Kootenai College. The content builds progressively, so it is recommended to use these in order. These will continue to be developed as we receive feedback. 

Within each Module description on this page, you'll find the story, the data science topics covered, module goals (for learners), learning goals (for instructors), and more resoutces. Click here to jump to a module: 

1. [Fisheries and methylmercury](#fisheries-monitoring-fish-growth-rates-and-mercury-concentrations) 
2. [Water quality and species reintroduction](#water-quality-and-species-reintroduction-comparing-stream-site-conditions-for-bull-trout)
3. [Bison reintroduction](#bison-analyzing-plant-biomass-for-sustaining-bison-reintroduction)
4. [Forest management](#forestry-managing-and-harvesting-a-douglas-fir-forest) 

## Getting Set Up 

Files are available to download directly from GitHub:

- [Link to github repo:](https://github.com/IndigenousEnvDataSci/EJ-DS) contains all of the below activities as separate folders, labeled 1-4. We will continue to update this site with more context and information on each module for instructors. 

- Each folder contains the data set used, a .Rmd file, and any supporting development .R files.

- files for students to work in are .Rmd files, or R markdown, which combine regular text with code chunks. This allows both written story and instructions along with pre-written code for students to run. There are also sections for students to fill in the code. For those unfamiliar with R markdown, see more [here](https://rmarkdown.rstudio.com/lesson-1.html). 


To set up to use these modules in a course setting, there are a couple of options: 

- Set up working directory using `setwd()` to the folder where files are located - this is written into the 
- Create a New R project by selecting 'Existing Directory' and entering the downloaded the folder location 


## [Fisheries:](https://github.com/IndigenousEnvDataSci/EJ-DS/tree/main/Mod1_Fish) monitoring fish growth rates and mercury concentrations 

Members of the K’avi have fished the waters on their land for many years to provide food for their community. To manage these waters, K'avi tribal fishery managers have been monitoring fish growth rates across the local water bodies in their community. 

However, many members of the community have begun to experience health problems associated with heavy metal poisoning. Historically, a factory used to be located upstream of the riverways fished by the K’avi, and waste from this factory was dumped into the nearby waters. Tribal fishery managers are now concerned that members of the community are being exposed to heavy metals through the fish that have been caught in these waters. As a result, they now want to start recording the concentrations of methylmercury in the belly fat of fish in the area. The tribe uses guidance from the Environmental Protection Administration (EPA), who have determined a Reference Dose (RfD) of methylmercury at 0.1ug per kg of body weight. Additionally, the Food and Drug Administration recommends eating no more than 0.46ug methylmercury/g of fish within a week ([FDA](https://www.fda.gov/food/environmental-contaminants-food/technical-information-development-fdaepa-advice-about-eating-fish-those-who-might-become-or-are)). Health hazards depend on how much fish a person consumes as well as their size, so the RfD could range between 0.3ug per day for nursing mothers to 6.8ug for someone weighing 150 lbs. These values are explored more in the code.  

Back in 1998, the tribal fisheries managers caught fish and measured their length and also the concentration of mercury in the fish. The goals of these managers was to learn how common it was for concentrations of mercury to be above a safety level of 4ug/kg.

Once they collect these data, the tribal fishery managers will need to present their findings to members of the community so they can better understand the public health crisis at hand. 

### Data science topics covered: 

- Using R for math 
- summarizing data
- scatter plots 
- data visualization with `ggplot`

### Module goals:

1. Explore data related to fish growth and heavy metal concentrations.

2. Summarize data relative the safety thresholds of mercury concentrations.

3. Create a graph that could be used to communicate the fishery managers' findings to their community. 

### Learning goals:

1. Students become more comfortable opening R and loading in data from an 
external data file. 
  
2. Students gain exposure to basic commands to explore their data before 
they begin to analyze it. 

3. Students gain experience loading in packages (`tidyverse` and `ggplot`). 

4. Students gain exposure to working with different data types (numeric, characters)

5. Students gain exposure to basic summary statistic arguments in R to pull the 
mean, median, max, and min values for different variables in the dataset. 

6. Students become equipped with how to make a graph in R using `ggplot` 
with variables pulled from a larger dataset. Can open a discussion point: 
how do we present data in a way that can help us understand the problem at hand?
(i.e. in this case, it may be plotting mercury concentrations found in fish 
at different times, or finding a realtionship between mercury concentration and fish length)

### Note for instructors: 

Data used here is 'dummy' data created based on a study that measured and related fish size and mercury concentration ([Somers and Jackson, 1993](https://jackson.eeb.utoronto.ca/files/2012/10/Somers-and-Jackson-1993.pdf)) See the file [fish_data_dummy.R](https://github.com/IndigenousEnvDataSci/EJ-DS/blob/main/Mod1_Fish/fish_data_dummy.R) for more information on how it was created or to make your own adjustments. 

## [Water quality and species reintroduction:](https://github.com/IndigenousEnvDataSci/EJ-DS/tree/main/Mod2_water) comparing stream site conditions for bull trout

Water is a valuable resource that is important for maintaining many aspects of a community's well being. "Water quality" captures many components of the chemistry, biology, and physics of fresh water. In this module, we will study data about two of these components, water temperature (T) and dissolved oxygen (DO). 

Bull trout are a culturally important, but threatened species of fish native to the U.S. Northwest and the Canadian Rockies. They provide an example of how water quality affects community culture, because, to thrive, bull trout habitat require cold, clean water. Bull trout can survive in temperatures ranging from 4-16$^\circ$C, but thrive in water temperatures below 14$^\circ$C ([U.S. Fish and Wildlife Service, 2015](https://www.fws.gov/node/68763)). Bull trout can be found in dissolved oxygen levels from 9-11 mg/L, but will experience reduced growth at levels below 6.2 mg/L ([Chambers et al., 2000](https://link.springer.com/article/10.1023/A:1011491706666), [Letourneau, 2022](https://gaftp.epa.gov/region10/ID-Temperature/Bundled-BE-Final/Attachment%208%20Sturgeon%20Litrev.pdf)). Such cold clean water conditions are growing scarcer due to climate warming and pollution. 

It is also important to note that water temperature and levels of dissolved oxygen are related. As water temperature increases, dissolved oxygen levels decrease in water. This is concerning as climate warming has the power to increase water temperature, causing dissolved oxygen to dip to unhealthy levels for aquatic life. 

In this module, we will use data about water quality trends to help K'avi Fish and Wildlife managers decide which of two streams would be best for a reintroduction of bull trout on tribal land. The tribe only has funding to bring the bull trout back to one stream. They have narrowed the choice of possible locations for the reintroduction to two streams, where temperature and D.O. have been monitored for about 15 years. Neither site is perfect, but they are both pretty good options. Your job is to analyze the temperature and D.O. data to help the tribe decide which is the best site. 

The upstream source of Stream A is a groundwater spring. Water in this stream is very clean and temperatures are steady because groundwater temperatures tend to match average yearly temperature.

The upstream source of Stream B is an alpine lake that is fed by a glacier. The glacial melt-water is very cold and clean, but the glacier is shrinking as climate warms, so the cold-water input to the lake is growing smaller over time.

### Data science topics covered:

- tidy data (loading, merging, tidying data)
- summary statistics 
- time series plots 
- data for decision making

### Module goals: 

1. Review skills learned in Module 1, such as calculating summary statistics and making scatter plots.

2. Clean up dataset for easier use and sharing. 

3. Create graphs of data over time. These are called 
"time series" graphs.

4. Explore how water quality data can help communities make decisions 
to protect culturally important species.

### Learning goals: 


1. On day 1 of this module, students will begin by reviewing the usual steps for getting started: setting the working directory, bringing a dataset into RStudio, etc.


2. Students will become familiar with how to "wrangle" the dataset into a format that will make it easier to analyze in R. This includes organizing columns of data in a "tidy" way, merging two datasets, changing the names of variables, etc. 


3. Students will learn how to handle common code bugs, such as NAs. 


4. Students will review the summary statistics: means, minima, maxima, etc. We'll end Day 1 of the module using these statistics to make a preliminary assessment of whether Stream A or Stream B would be a better choice for reintroducing bull trout to K'avi land.


4. For Day 2, students will analyze patterns in the temperature and DO data from the two streams in more detail. First, we'll use familiar code to make a scatter plot of temperature and DO. This will help us visualize all of the data from both streams, which might give us insights we didn't see from the summary statistics. We can use this scatterplot to learn which stream had more years in the "danger zone" for bull trout, where temperatures were above 12 degrees C or dissolved oxygen was below 5 mg/L. 


5. Students will become more familiar with ggplot by exploring trends in temperature and dissolved oxygen over the 15 years that the K'avi have been collecting data from these streams. These "time series graphs" tell us whether water quality in the two streams is getting better, getting worse, or staying the same.  This shows the adaptability of ggplot, and the ability to add graphical features. [Learn more about ggplot here](https://ggplot2.tidyverse.org/).


6. Students can use all the analyses conducted (summary statistics, scatter plots, and time series plots) to make recommendations to the K'avi fisheries managers about which stream is a better bet for supporting healthy bull trout populations on tribal land. How does each analysis help you understand patterns in water quality? Which analysis was most useful? 


7. From the scientific analysis perspective, this module highlights why it is useful to visualizing data in multiple ways. There is one question: "Which of two streams has water quality most appropriate to maintain a healthy bull trout population?" But we ask it three times, after seeing summary statistics, then a scatter plot, then time series plots. The summary statistics and the scatter plot show that Stream B generally has better water quality than Stream A, but the time-series graph shows that both temperature and dissolved oxygen are getting worse for bull trout. The question of which stream is a better choice (the one with better values or the one without a dangerous trend) is for the class to discuss.

### Note for instructors, and more resources: 

This module focuses on data wrangling in R. It's a way of making sure the data you analyze is in a format that is reliable and complete. Students will use new commands, like `pivot_longer()` and `left_join()` to make the data "tidy", so it can be easier to work with and to share with collaborators. There are many websites that can help students learn these new tools and approaches. Here are a few to get you started: 

-[tidying data](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html)
-[pivoting data](https://tidyr.tidyverse.org/articles/pivot.html) 
-[joining data](https://r4ds.hadley.nz/joins.html).
  
## [Bison:](https://github.com/IndigenousEnvDataSci/EJ-DS/tree/main/Mod3_Bison) analyzing plant biomass for sustaining bison reintroduction

For many years, the K'Avi tribe has had cattle grazing pastures throughout their land. Cattle have been a useful agricultural resource, but they are not native to the K'Avi's region. In the past year, tribal agriculture managers have noticed a decreased vitality in many of their grazing lands causing less regrowth and a decrease in native plant species. This is most likely due to the cattle, as they are non-specific grazers and are a non-native species. Tribal agriculture managers are considering reintroducing bison to the lands for both ecological and cultural reasons. Bison are native to this region and have been observed
to increase native grass species richness by 103% in comparison to cattle! Reintroducing bison will also re-establish the K'Avi's cultural and historical connections to the land, and can reaffirm food sovereignty and provide additional economic benefits ([Shamon et al. 2022](https://www.frontiersin.org/articles/10.3389/fevo.2022.826282/full)). The managers are hoping to repurpose the cattle grazing lands to become bison grazing lands to foster a more sustainable agricultural practice for the region and to ensure the preservation of the native grasslands.

In collaborations with numerous tribal governments, K'Avi agriculture managers are hoping to transfer a herd of 200 bison for reintroduction, which would allow for genetic diversity  within the herd and opportunities for sustainable hunting. 

To reintroduce bison, the land must have enough available sustenance for the bison to graze and maintain a healthy lifestyle. The tribal agriculture managers are considering three sites for reintroduction and have produced a dataset (biomass.csv) with the annual plant biomass (i.e., the amount of food available) at each site. They also used GIS to calculate the area of each site in hectares (one hectare is roughly equivalent to two football fields), producing the dataset "bison_sites.csv". These data will help determine which sites are 
viable for bison reintroduction! While the hope is to eventually reintroduce bison herds to all of these sites, K'Avi agricultural managers must currently choose a single site 
to place this first herd of 200 bison. 

### Data science topics covered:

- merging and grouping data 
- unit conversions using `mutate()`
- more data visualization and exploration with `ggplot`

### Module goals: 

1. Figure out which sites have enough food (plant biomass) to support a herd of 200 reintroduced bison 

2. Consider multiple ecosystem factors, like nitrogen and elk populations, in site selection for bison 

3. Review skills learned in previous modules, such as summary statistics and merging datasets.

4. Visualize the data using your previous knowledge and creativity!


### Learning goals: 

1. Students will learn how to convert units in R and add them to the dataset. They will gain understanding of why units are important in making a more concise representation of the data.

2. Students will learn how to group data together in a new way, using `group_by()` and `summarise()` functions 

3. Students will explore the importance of considering multiple variables when making management decisions and the value of reintroducing native species to their habitats.

4. Students will gain more experience with summarizing and visualizing data. 

    
## [Forestry:](https://github.com/IndigenousEnvDataSci/EJ-DS/tree/main/Mod4_Forestry) managing and harvesting a douglas fir forest 

Members of the K'avi tribe have managed a forest on their lands for decades. Recently, tribal forestry managers have started collecting data from a few different sites in the forest. They would like to set up a location for managing and harvesting Douglas firs for lumber. It is your job to analyze the data and determine which of the proposed sites would be the best for a harvest.

The K'avi want to choose a site that is the most productive, or in other words, has the greatest average board_feet value for a given time period. But, they have also found throughout the time that they have been caring for the forest, that there are many factors that affect the quality of a given site. Components such as altitude, aspect, soil, and rainfall, as well as the combination of these factors have an effect on the productivity of a site. 

1. Altitude affects productivity by shortening the length of the growing season and lowering the mean temperature. At high altitude, growth begins late and stops early, therefore making them less productive.

2. Aspect also affects productivity, as sites that face north, northeast, and east are more fertile (likely due to the sun's rays having less of an effect on the soil's dampness). Aspects that faced south to west had variable affects. Also, sites with south, southwest, and south aspects were less productive.

3. Soil must have the necessary substances to meet the conditions needed to grow. The most productive sites have deep, well-drained sandy loam soils, with the second-most being clay soils, and the least productive being gravel soils.

4. Rainfall, especially when it is abundant, greatly increases the tree growth at a site. The most productive sites have an annual precipitation of over 60 inches with less productive sites having an annual precipitation of less than 30 inches. 

### Data science topics covered:  

- data exploration and summarization 
- combining datasets
- creating a table 
- visualization and decision making 

### Module goals: 

1. Explore and summarize data from various forest sites, reviewing what you have learned from the previous 3 modules  

2. Consider which site could be used for lumber harvesting based on qualitative and quantitative data 

3. Create data visualizations for communicating your findings to a broader audience, and consider how to present information for community decision making 

### Learning goals: 

1. Students will use previous knowledge to explore and summarize new data sets, working more independently  

2. Students will gain experience creating data visualizations, understanding the difference between plotting in R for exploration and for presentation 

3. Students will gain a better understanding of how to communicate results to non-scientific audiences 


### Notes for instructors, and more resources:

Our graphing theory information was mainly inspired by these resources: 

* Chapter in data visualization book about ggplot: [Healy, 2018](https://socviz.co/lookatdata.html)
* Article about data visualization in environmental science for general audiences: [Grainger et al. 2016](https://www.sciencedirect.com/science/article/pii/S1364815216305990)
* Article about the science of data visualization: [Franconeri et al. 2021]( https://journals-sagepub-com.proxy.library.nd.edu/doi/10.1177/15291006211051956)
* Conference presentation about illustrating science for a non-specialist audience: [Jen Christiansen, senior graphics editor at Scientific American](https://www.youtube.com/watch?v=tE1ZefOJRLQ)

