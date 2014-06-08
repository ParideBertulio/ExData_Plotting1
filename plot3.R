# read and import file household_power_consumption.txt ************
#******************************************************************
source("getting.R")

#PLOT 3 ***********************************************************
#******************************************************************
png("plot3.png", width = 480, height = 480)

par(bg="transparent")
plot(data[,"newTime"],data[,"Sub_metering_1"],type = "l",col="black",xlab="",ylab="Energy sub metering")
lines(data[,"newTime"],data[,"Sub_metering_2"],type = "l",col="red")
lines(data[,"newTime"],data[,"Sub_metering_3"],type = "l",col="blue")
legend("topright",lty=c(1,1,1),col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

dev.off() 