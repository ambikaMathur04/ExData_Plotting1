data<- read.table(file = "household_power_consumption.txt",header = TRUE,sep = ";",dec = ".",stringsAsFactors = FALSE,na.strings = "?")
readData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

Global_active_power <- readData$Global_active_power


datetime <- strptime(paste(readData$Date, readData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
