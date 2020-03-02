thefile = "c:/dishes.csv"
table <- read.table(file=thefile, header = TRUE, sep = ";")

library(ggplot2)
require(ggplot2)

avg <- aggregate(Score ~ Dish, dishes, mean)

print(avg)

ggplot(avg, aes(Dish, Score)) + geom_bar(stat = "identity")