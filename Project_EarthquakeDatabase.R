library(readr)
database <- read_csv("database.csv")
View(database)

# Milestone 3

hist(database$Latitude, main = "Frequency of Earthquake by Latitude", xlab = "Latitude", ylab = "Frequency")
hist(database$Longitude, main = "Frequency of Earthquake by Longitude", xlab = "Longitude", ylab = "Frequency")
hist(database$Magnitude, main = "Frequency of Earthquake by Magnitude", xlab = "Magnitude", ylab = "Frequency")
hist(database$Depth, main = "Frequency of Earthquake by Depth", xlab = "Depth", ylab = "Frequency")

# Milestone 5

# Calculations for the MAGNITUDE
mean(database$Magnitude)
mean(database$Magnitude, trim = 0.1)
median(database$Magnitude)
var(database$Magnitude)
sd(database$Magnitude)

# Calculations for the DEPTH
mean(database$Depth)
mean(database$Depth, trim = 0.1)
median(database$Depth)
var(database$Depth)
sd(database$Depth)


