rm(list = ls())

## set working directory##

setwd("C:/Users/Oluwakemi/Downloads/ExData_plotting1")

##download and unzip file

if (!file.exists("powerdata.zip")) {
  dir.create("powerdata.zip")
 zipUrl <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file (zipUrl, destfile= "./powerdata.zip", mode="wb")
downloaddate <- date()
unzip("powerdata.zip")
}

#Read In File

library(lubridate) 

powerdt <- read.table('household_power_consumption.txt', header=TRUE,
                           sep=';', na.strings=c('NA', '?', ''),
                           colClasses=c(rep('character', 2), 
                           rep('numeric', 7)))

powerdt$DateTime = paste(powerdt$Date, powerdt$Time)

powerdt$DateTime = as.POSIXlt(powerdt$DateTime,format="%d/%m/%Y %H:%M:%S")


#subset data to the needed dates.

subpowerdt <- subset(powerdt, year(DateTime) == 2007 & 
                                 month(DateTime) == 2 &
                                 (day(DateTime) == 1 | day(DateTime) == 2))

colnames(subpowerdt)[10] <- "datetime"     