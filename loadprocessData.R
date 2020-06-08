#Here we first *unzip* the data required for analysis from the **ZIP File : activity.zip** and read the data into R by using the *read.csv()* function.  
#We transform the data into a format suitable for our analysis.

unzip("activity.zip")
activityData <- read.csv("activity.csv", na.strings = "NA")
activityData$date <- as.Date(activityData$date, "%Y-%m-%d")
activityData$day <- weekdays(activityData$date)
head(activityData)
