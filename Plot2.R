### Plot 2

## Read data from the file and prepare for ploting
source("Preparedata.R")

## Launch the PNG graphics device
png(filename = "Plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

## Plot the graph
with(rs, plot(dt, Global_active_power, type="l", xlab="",
              ylab="Global Active Power (kilowatts)"))

## Close the gaphics device
dev.off()


