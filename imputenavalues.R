totalNA <- sum(is.na(activityData$steps))
newactivityData <- activityData
stepMean <- tapply(activityData$steps, activityData$interval, mean, na.rm = TRUE)
newactivityData$steps[is.na(newactivityData$steps)] <- stepMean[match(newactivityData$interval[is.na(newactivityData$steps)], names(stepMean))]
totalSteps1 <- with(newactivityData, tapply(steps, date, sum, na.rm = TRUE))
hist(totalSteps1, col = "orangered", xlab = "Total Steps", main = "Total number of steps taken per day(Imputing Values ~ Time Interval)")
newmeanSteps <- mean(totalSteps1)
newmeanSteps
newmedianSteps <- median(totalSteps1)
newmedianSteps
