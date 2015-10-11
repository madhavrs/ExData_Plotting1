## Plot 4 - Plotting across rows and columns 
                   
## First, read the file and carve out a subset of data for the given two dates 

source("readFile.R")

##saving the plot to a PNG file with a width of 480 pixels and a height of 480 pixels
png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")

## Fill plots row-wise - 2 rows, 2 columns 
par(mfrow = c(2, 2)) 

## Top-left plot - Global Active Power by DateTime/Day 
plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

## Top-right - Voltage by DateTime/Day 
plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

## Bottom-left - Submetering1 by Datetime with lines from submetering 2 and submetering3 
plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", bty = "n", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)


## Bottom-right - Global Reactive Power by DateTime 
plot(DateTime, Global_reactive_power,  type = "l", col = "black", xlab = "datetime", ylab = colnames(plotdata)[4])

dev.off()


