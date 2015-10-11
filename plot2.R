## Plot 2 - Lines - Global_Active_Power by DateTime (2D plotting) 
                   
## First, read the file and carve out a subset of data for the given two dates 

source("readFile.R")

#saving the plot to a PNG file with a width of 480 pixels and a height of 480 pixels
png(filename = "plot2.png",  width = 480, height = 480, units = "px", bg = "transparent")

#Plot lines by chosing type = "l"
plot(DateTime, Global_active_power, type = "l",xlab = "DateTime/Day", ylab = "Global Active Power (Kilowatts)")

dev.off()

