library(reshape2)
data(airquality)
summary(airquality)
melted_data <- melt(airquality)
print(melted_data)
melted_data_id <- melt(airquality, id.vars = c("Month", "Day"))
print(melted_data_id)
casted_data <- dcast(melted_data_id, Month + Day ~ variable)
print(casted_data)
average_data <- dcast(melted_data, Month ~ variable, fun.aggregate = mean)
print(average_data)