rawdata <- read.table("household_power_consumption.txt", sep=";", header = T,na.strings = "?")
data <- subset(rawdata, rawdata$Date == "1/2/2007" | rawdata$Date == "2/2/2007")

png(filename = "plot1.png", width = 480, height = 480)

hist(data$Global_active_power, col ='red', xlab = 'Global Active Power (kilowatts)', main = "Global Active Power")

dev.off()