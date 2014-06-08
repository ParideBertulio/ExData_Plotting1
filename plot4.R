# read and import file household_power_consumption.txt ************
#******************************************************************
source("getting.R")

#PLOT 4 ***********************************************************
#******************************************************************
png("plot4.png", width = 480, height = 480)

par(bg="transparent",mfrow=c(2,2))

# Global Active Power **********************************
#*******************************************************
plot(data[,"newTime"],data[,"Global_active_power"],type = "l",col="black",xlab="",ylab="Global Active Power")

# Voltage **********************************************
#*******************************************************
plot(data[,"newTime"],data[,"Voltage"],type = "l",col="black",xlab="datetime",ylab="Vlotage")

# metering *********************************************
#*******************************************************
plot(data[,"newTime"],data[,"Sub_metering_1"],type = "l",col="black",xlab="",ylab="Energy sub metering")
lines(data[,"newTime"],data[,"Sub_metering_2"],type = "l",col="red")
lines(data[,"newTime"],data[,"Sub_metering_3"],type = "l",col="blue")
legend("topright",bty = "n",lty=c(1,1,1),col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

# Global reactive power ********************************
# ******************************************************
plot(data[,"newTime"],data[,"Global_reactive_power"],type = "l",col="black",xlab="datetime",ylab="Global reactive power")

dev.off() 