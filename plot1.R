## Plot 1 - Histogram
                   
## First, read the file and carve out a subset of data for the given two dates 

source("readFile.R")

#saving the plot to a PNG file with a width of 480 pixels and a height of 480 pixels
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")

#histogram with 12 breaks 
hist(Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (Kilowatts)", breaks = 12, ylim = c(0, 1200))
     
dev.off()

