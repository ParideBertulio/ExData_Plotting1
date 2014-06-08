# read and import file household_power_consumption.txt ************
#******************************************************************
source("getting.R")

#PLOT 2 ***********************************************************
#******************************************************************
png("plot2.png", width = 480, height = 480)

par(bg="transparent")
plot(data[,"newTime"],data[,"Global_active_power"],type = "l",col="black",xlab="",ylab="Global Active Power(kilowatts)")


dev.off() 
