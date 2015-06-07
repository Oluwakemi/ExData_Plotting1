##create plot 4

setwd("C:/Users/Oluwakemi/Downloads/ExData_plotting1")

source("Data.R")

##copy plot to png device 
png("plot4.png", width=480, height=480)

##specify the alignment of the plots (2 rows,2 columns)
par(mfrow=c(2,2)) 

##create plots

with(subpowerdt, {
  
  #plot1
  plot(datetime,Global_active_power, 
       xlab="", ylab="Global Active Power",type="l")
  
  #plot2
   plot(datetime,Voltage, 
       xlab="datetime",ylab="Voltage",type="l")
  
  #plot3
   plot(datetime,Sub_metering_1, 
       xlab="", ylab="Energy sub metering",type="n")
       ##add lines to plot3
       lines(subpowerdt$datetime,subpowerdt$Sub_metering_1, col="black")
       lines(subpowerdt$datetime,subpowerdt$Sub_metering_2,col="red")
       lines(subpowerdt$datetime,subpowerdt$Sub_metering_3,col= "blue")
       ##add legend to plot3
       legend("topright", lty=1 ,lwd=2, col= c("black", "red", "blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

  #plot4
   plot(datetime,Global_reactive_power, 
       xlab="datetime", ylab="Global_reactive_power",type="l")

##close png device
dev.off()
})




