#Code for reading the data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subset data with two required dates
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Define variables
globalActivePower <- as.numeric(subSetData$Global_active_power)

#Plot the graphs with required labeling and save to png file
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()