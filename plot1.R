# read and import file household_power_consumption.txt ************
#******************************************************************
source("getting.R")

#PLOT 1 ***********************************************************
#******************************************************************
png("plot1.png", width = 480, height = 480)

par(bg="transparent")
hist(data[,"Global_active_power"],col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

dev.off() 
