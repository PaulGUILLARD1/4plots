rawdata <- read.table("household_power_consumption.txt", sep=";", header = T,na.strings = "?")
data <- subset(rawdata, rawdata$Date == "1/2/2007" | rawdata$Date == "2/2/2007")
data <- within(data, { timestamp=strptime(paste(Date, Time), "%d/%m/%Y%H:%M:%S") })

png(filename = "plot2.png", width = 480, height = 480)

plot(x =data$timestamp, y= data$Global_active_power, type="l", xlab='', ylab = 'Global Active Power (kilowatts)')

dev.off()