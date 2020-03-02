thefile = "c:/dishes.csv"
table <- read.table(file=thefile, header = TRUE, sep = ";")


library(class)
require(class)


table$Dish <- as.numeric(table$Dish)

nydata <- dist(table[c(2,3)], method = "euclidean")

ove <- cmdscale(nydata)[20:881,]
test <- cmdscale(nydata)[1:19,]

k2 <- knn1(ove,test,table[20:881,1])

prmatrix(k2)