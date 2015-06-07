##create plot 1

setwd("C:/Users/Oluwakemi/Downloads/ExData_plotting1")

##source data
source("Data.R")

##copy histogram to png device 
png("plot1.png", width=480, height=480)

##create histogram
with(subpowerdt, hist(Global_active_power, main="Global Active Power",col="red",
                      xlab="Global Active Power (kilowatts)"))

##close png device
dev.off()






