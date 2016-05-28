### Plot 1

## Read data from the file and prepare for ploting
source("Preparedata.R")

## Launch the PNG graphics device
png(filename = "Plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

## Plot the graph
with(rs,hist(Global_active_power, col="red", xlab="Global Active Power (kilowatts)",
             ylab="Frequency",main="Global Active Power"))

## Close the gaphics device
dev.off()


