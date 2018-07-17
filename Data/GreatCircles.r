setwd("C:\\Users\\mmtobias\\Documents\\Presentations\\FOSS4G 2018\\Data")

library(geosphere)
library(sp)
library(rgdal)
library(geojsonio)

datafile<-"FOSS4G_Locations_2018.txt"

fg<-read.delim(datafile)

from.pts<-data.frame(fg$Longitude[1:16], fg$Latitude[1:16])
to.pts<-data.frame(fg$Longitude[2:17], fg$Latitude[2:17])


all.lines<-c()

for (i in 1:16){
  #print(i)
  one.line<-gcIntermediate(from.pts, to.pts, n=100, addStartEnd=TRUE, sp= TRUE)
  #one.line<-Line(one.line)
  #stuff<-c(from.pts[,2], from.pts[,1], to.pts[,2], to.pts[,1])
  #all.lines<-SpatialLines(list(all.lines, one.line))
  }

geojson_write(one.line, file="FOSS4G_GreatCircles_2018.geojson", overwrite=TRUE, convert_wgs84 = TRUE)
