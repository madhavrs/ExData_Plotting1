## Plot 3 - plotting sub-metering values 
                   
## First, read the file and carve out a subset of data for the given two dates 

source("readFile.R")

##saving the plot to a PNG file with a width of 480 pixels and a height of 480 pixels
png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "transparent")

## Creating the Plot 
plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "DateTime/Day", ylab = "Energy sub metering")

## Adding Lines and legend 
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

dev.off()


