## This code is to read the entire file and then carve out a subset of that dataset (data from the dates 2007-02-01 and 2007-02-02) that is required for plotting exercise

filename = "household_power_consumption.txt"
tmpdata = read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
attach(tmpdata)


##Carving out the subset of data required for plotting 

plotdata = tmpdata[Date == "1/2/2007" | Date == "2/2/2007", ]
attach(plotdata)

## Converting Date and Time variables to DateTime class in R 
dateandtime <- paste(Date, Time)
plotdata$DateTime <- strptime(dateandtime, "%d/%m/%Y %H:%M:%S")
attach(plotdata)