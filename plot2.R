##create plot 2

setwd("C:/Users/Oluwakemi/Downloads/ExData_plotting1")

##source data
source("Data.R")

##copy plot to png device 
png("plot2.png", width=480, height=480)

##create plot
with(subpowerdt,plot(datetime,Global_active_power, 
          xlab="", ylab="Global Active Power (kilowatts)",
          type="l"))

##close png device
dev.off()


