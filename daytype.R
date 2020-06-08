library(ggplot2)
logical <- newactivityData$day == "Saturday" | newactivityData$day == "Sunday"
newactivityData$daytype[logical] <- "weekend"
newactivityData$daytype[!logical] <- "weekday"
daytypePlot <- aggregate(steps ~ daytype + interval, data = newactivityData, mean)
plot<- ggplot(daytypePlot, aes(x = interval , y = steps, color = daytype)) +
      geom_line() +
      labs(title = "Average daily steps by type of date", x = "Interval", y = "Average number of steps") +
      facet_wrap(~daytype, ncol = 1, nrow=2)
print(plot)