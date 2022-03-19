rawdata <- read.table("household_power_consumption.txt", sep=";", header = T,na.strings = "?")
data <- subset(rawdata, rawdata$Date == "1/2/2007" | rawdata$Date == "2/2/2007")
data <- within(data, { timestamp=strptime(paste(Date, Time), "%d/%m/%Y%H:%M:%S") })

png(filename = "plot3.png", width = 480, height = 480)

plot(x =data$timestamp, y= data$Sub_metering_1, col = 'black', type="l", xlab='', ylab = 'Energy sub metering')
lines(x =data$timestamp, y= data$Sub_metering_2, col='red')
lines(x =data$timestamp, y= data$Sub_metering_3, col='blue')
legend(x= 'topright',legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1),col=c('black','red','blue'))

dev.off()