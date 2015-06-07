##create plot 3

setwd("C:/Users/Oluwakemi/Downloads/ExData_plotting1")

##source data
source("Data.R")

##copy plot to png device 
png("plot3.png", width=480, height=480)

##plot the base structure of the graph
with(subpowerdt,plot(datetime,Sub_metering_1, 
                     xlab="", ylab="Energy sub metering",
                     type="n"))

##add lines
lines(subpowerdt$datetime,subpowerdt$Sub_metering_1, col="black")
lines(subpowerdt$datetime,subpowerdt$Sub_metering_2, col="red")
lines(subpowerdt$datetime,subpowerdt$Sub_metering_3, col= "blue")

##OR
#with (subpowerdt,lines(datetime,Sub_metering_1, col="black"))
#with (subpowerdt,lines(datetime,Sub_metering_2, col="red"))
#with (subpowerdt,lines(datetime,Sub_metering_3, col="blue"))

##add legend
legend("topright", lty=1 ,lwd=2, col= c("black", "red", "blue"),
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

##close png device
dev.off()
  
