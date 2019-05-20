library(readr)
library(dplyr)

Crimes <- read_csv("C://Users//Assignments12//communities_data.csv")
str(Crimes)
View(Crimes)


names(Crimes) <- c("Case", "Number", "Date", "Block", "IUCR", "Primary Type", "Description",
                   "Location Desc", "Arrest", "Domestic", "Beat", "District", "Ward", "Community Area",
                   "FBI Code", "X Coordinate", "Y Coordinate", "Year", "Updated On", 
                   "Latitude", "Longitude", "Location")
head(Crimes)
str(Crimes)

#a. Visualize the correlation between all variables in a meaningful and clear way 
# of representing. Find out top 3 reasons for having more crime in a city.


Crimes <- na.omit(Crimes)
names(Crimes)
c <- cor(Crimes[c(11,12,13,14,18,20,21)])
c

psych::cor.plot(c)

#a(2nd) Find out top 3 reasons for having more crime in a city.
x <- as.data.frame(table(Crimes$Description))
x[order(x$Freq, decreasing = T)[1:3],]


#b What is the difference between co-variance and correlation? Take an 
#example from this dataset and show the differences if any?

correlation1 <- cor(Crimes[c(11,12)])
correlation1

covariance1 <- cov(Crimes[c(11,12)])
covariance1 