activityPattern <- with(activityData, tapply(steps, interval, mean, na.rm = TRUE))
plot(names(activityPattern), activityPattern, type = "l", lwd = 2, col = "orangered", xlab = "Time Interval", ylab = "Average Number of Steps", main = "Time Series Plot averaged across all days")
maxInterval <- names(which.max(activityPattern))
