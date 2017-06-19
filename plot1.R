

data<- read.table(file = "household_power_consumption.txt",header = TRUE,sep = ";",dec = ".",stringsAsFactors = FALSE,na.strings = "?")
readData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

Global_active_power <- readData$Global_active_power

png(filename = "plot1.png",width = 480,height = 480)
hist(Global_active_power,main = "Global Active Power",xlab = "Global Active Power(kilowatts)",ylab = "Frequency",col = "red")

dev.off()
