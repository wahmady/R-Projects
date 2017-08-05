#installed packages
install.packages(c("maps","mapproj","geosphere","ggplot2"))
#added to library
library(maps)
library(mapproj)
library(geosphere)
library(ggplot2)
#Generated a CSV from https://earthquake.usgs.gov/earthquakes/search/
#read into earthquakes
earthquakes = read.csv("query (1).csv")
#Mapped the world Map all earthquakes within the last 30 days(08/04/2017)
map("world",interior = TRUE, fill = TRUE, col = "dodgerblue3")
proj = mapproject(x = earthquake$longitude, y = earthquake$latitude)
points(proj$x, proj$y, col = "red", pch = 3, cex = earthquake$mag / 20)
points(max(earthquake$mag), col = "black")