#Import file household_power_consumption.txt" *********************
#******************************************************************
mydata<-read.table("household_power_consumption.txt",sep=";",nrows=2880,skip=66637)

colnames(mydata)<-read.table("household_power_consumption.txt",sep=";",nrows=1,colClasses = "character")

# convert the Date and Time to the correct format *****************
#******************************************************************
newTime<-strptime(paste(mydata[,"Date"],mydata[,"Time"]), "%d/%m/%Y %H:%M:%S")
data<-cbind(newTime,mydata[,c(-1,-2)])
