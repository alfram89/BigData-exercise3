thefile = "https://www.ntnu.no/iie/fag/big/exercises/winequality-red.csv"
reddata <- read.table(file=thefile, header = TRUE, sep = ";")

require(party)
library(party)
library(ggplot2)


print(head(reddata))

input.dat <- reddata

png(file = "avgjorelse.png", width = 1920, height = 1080, units = "px")


output.tree <- ctree(quality ~ total.sulfur.dioxide + sulphates + pH, data = input.dat)

plot(output.tree)

dev.off()
