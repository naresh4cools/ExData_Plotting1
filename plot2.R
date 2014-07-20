db <- read.table("household_power_consumption.txt",header=TRUE, sep = ';')
selDb <- db[db$Date %in% c("1/2/2007","2/2/2007") ,]
date <- as.character(as.Date(selDb$Date,"%d/%m/%Y"))
dtChar <- paste(date,selDb$Time)
dateTime <- strptime(dtChar,"%Y-%m-%d %H:%M:%S")

png("plot2.png", width = 480, height = 480)
plot(dateTime, as.numeric(selDb$Global_active_power), type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()