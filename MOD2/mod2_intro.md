---
output:
  html_document: default
  pdf_document: default
---

# [Module 2: Exploring water quality for bull trout reintroduction](https://github.com/IndigenousEnvDataSci/EJ-DS/tree/main/Mod2_water)

Water is a valuable resource that is important for maintaining many aspects of a community’s well being. “Water quality” captures many components of the chemistry, biology, and physics of fresh water. In this module, we will study data about two of these components, water temperature (T) and dissolved oxygen (DO).

Bull trout are a culturally important, but threatened species of fish native to the U.S. Northwest and the Canadian Rockies. They provide an example of how water quality affects community culture, because, to thrive, bull trout require water temperatures below 14 degrees C and dissolved oxygen levels above 6.2 mg/L. Such cold clean water conditions are growing scarcer due to climate warming and pollution.

It is also important to note that water temperature and levels of dissolved oxygen are related. As water temperature increases, dissolved oxygen levels decrease in water. This is concerning as climate warming has the power to increase water temperature, causing dissolved oxygen to dip to unhealthy levels for aquatic life.

In this module, we will use data about water quality trends to help K’avi Fish and Wildlife managers decide which of two streams would be best for a reintroduction of bull trout on tribal land. The tribe only has funding to bring the bull trout back to one stream. They have narrowed the choice of possible locations for the reintroduction to two streams, where temperature and D.O. have been monitored for about 15 years. Neither site is perfect, but they are both pretty good options. Your job is to analyze the temperature and D.O. data to help the tribe decide which is the best site.

The upstream source of Stream A is a groundwater spring. Water in this stream is very clean and temperatures are steady because groundwater temperatures tend to match average yearly temperature. The upstream source of Stream B is an alpine lake that is fed by a glacier. The glacial melt-water is very cold and clean, but the glacier is shrinking as climate warms, so the cold-water input to the lake is growing smaller over time.

## Data science topics covered:

-   Loading and previewing CSV files
-   tidy data
-   grouping and summarizing data with `dplyr`
-   data visualization with `ggplot` : scatter plots and time series

## Module goals:

1.  Review skills you learned in Module 1, including loading and previewing data, descriptive statistics, and making scatter plots.

2.  Rearrange data into a “tidy” format that makes graphing easier.

3.  Practice how to “debug” code, in other words, we’ll learn how to fix common problems that we see when using real world data.

4.  Create graphs of data over time. These are called “time series” graphs.

5.  Explore how water quality data can help communities make decisions to protect culturally important species.

## Learning goals: (NEEDS EDITS)

On day 1 of this module, we’ll start by reviewing the usual steps for getting started: setting the working directory, bringing a dataset into RStudio, etc.

Next, we’ll “wrangle” the dataset into a format that will make it easier to analyze in R. This includes organizing columns of data in a “tidy” way, merging two datasets, changing the names of variables, etc. Data wrangling is an important component of data science. It’s a way of making sure the data you analyze is in a format that is reliable and complete. Students will use new commands, like pivot_longer() and left_join() to make the data “tidy”, so it can be more easily reliable. There are many websites that can help you and your students learn these new tools and approaches. Here are a few to get you started: tidying data; pivoting data; joining data.

NEW SKILL: students will learn how to handle common code bugs, such as NAs.

After step 2, we will have the data in tidy form, and we can use familiar code to learn the summary statistics: means, minima, maxima, etc. We’ll end Day 1 of the module using these statistics to make a preliminary assessment of whether Stream A or Stream B would be a better choice for reintroducing bull trout to K’avi land.

We will spend Day 2 analyzing patterns in the temperature and DO data from the two streams in more detail. First, we’ll use familiar code to make a scatter plot of temperature and DO. This will help us visualize all of the data from both streams, which might give us insights we didn’t see from the summary statistics. We can use this scatterplot to learn which stream had more years in the “danger zone” for bull trout, where temperatures were above 14 degrees C or dissolved oxygen was below 6.2 mg/L.

Next, we’ll learn how to adapt our plotting code to show trends in temperature and dissolved oxygen over the 15 years that the K’avi have been collecting data from these streams. These “time series graphs” tell us whether water quality in the two streams is getting better, getting worse, or staying the same. This shows the adaptability of ggplot, and the ability to add graphical features. Here’s a link with more information

Finally, you can use all the analyses you have conducted (summary statistics, scatter plots, and time series plots) to make recommendations to the K’avi fisheries managers about which stream is a better bet for supporting healthy bull trout populations on tribal land. How does each analysis help you understand patterns in water quality? Which analysis was most useful?

From the scientific analysis perspective, this module highlights why it is useful to visualizing data in multiple ways. There is one question: “Which of two streams has water quality most appropriate to maintain a healthy bull trout population?” But we ask it three times, after seeing summary statistics, then a scatter plot, then time series plots. The summary statistics and the scatter plot show that Stream B generally has better water quality than Stream A, but the time-series graph shows that both temperature and dissolved oxygen are getting worse for bull trout. The question of which stream is a better choice (the one with better values or the one without a dangerous trend) is for the class to discuss.

## Note for instructors:
