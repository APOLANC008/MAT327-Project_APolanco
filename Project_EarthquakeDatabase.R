library(readr)
database <- read_csv("database.csv")
View(database)

# Milestone 3

hist(database$Latitude, main = "Frequency of Earthquake by Latitude", xlab = "Latitude", ylab = "Frequency")
hist(database$Longitude, main = "Frequency of Earthquake by Longitude", xlab = "Longitude", ylab = "Frequency")
hist(database$Magnitude, main = "Frequency of Earthquake by Magnitude", xlab = "Magnitude", ylab = "Frequency")
hist(database$Depth, main = "Frequency of Earthquake by Depth", xlab = "Depth", ylab = "Frequency")

# Milestone 4

mean(database$Depth, trim = 0.1)
hist(database$Depth, main = "Frequency of Earthquake by Depth with Trimmed Mean", xlab = "Depth", ylab = "Frequency")
abline(v = trimmed_mean, col = "red", lwd = 2, lty = 2)

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

# Milestone 6

plot(database$Magnitude, database$Depth, xlab = "Magnitude", ylab = "Depth", main = "Analysis of Seismic Trends: Magnitude vs Depth")
cor(database$Magnitude, database$Depth)

plot(database$Depth, database$Latitudexlab, xlab = "Depth", ylab = "Latitude", main = "Analysis of Seismic Trends: Depth vs Latitude")
cor(database$Depth, database$Latitude)

plot(database$Latitude, database$Longitude, xlab = "Latitude", ylab = "Longitude", main = "Analysis of Seismic Trends: Latitude vs Longitude")
cor(database$Latitude, database$Longitude)

# Milestone 7

# Move Confidence Interval of Magnitude Column
mag_data = c(database$Magnitude)
xbar = mean(mag_data)
xbar
s = sd(mag_data)
s
n = length(database$Magnitude)
n
t = qt(0.05/2, (n - 1))
t
t = -qt(0.05/2, (n - 1))
t
xbar - t*s/sqrt(n)
xbar + t*s/sqrt(n)

# Move Confidence Interval of Depth Column
dep_data = c(database$Depth)
xbar = mean(dep_data, trim = 0.1)
xbar
s = sd(dep_data)
s
n = length(database$Depth)
n
t = qt(0.05/2, (n - 1))
t
t = -qt(0.05/2, (n - 1))
t
xbar - t*s/sqrt(n)
xbar + t*s/sqrt(n)
