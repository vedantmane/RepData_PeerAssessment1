totalSteps <- with(activityData, tapply(steps, date, sum, na.rm = TRUE))
hist(totalSteps, col = "orangered", xlab = "Total Steps", main = "Total number of steps taken per day")
mean(totalSteps)
median(totalSteps)