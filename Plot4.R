### Plot 4

## Read data from the file and prepare for ploting
source("Preparedata.R")

## Launch the PNG graphics device
png(filename = "Plot4.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

## Plot the graphs
# Set the graph layout
par(mfrow=c(2,2))

# Graph 1 goes into top left
with(rs, plot(dt, Global_active_power, type="l", xlab="",
              ylab="Global Active Power"))

# Graph 2 goes into top right
with(rs, plot(dt, Voltage, type="l", xlab="datetime",
              ylab="Voltage"))

# Graph 3 goes into bottom left
with(rs, plot(dt, Sub_metering_1, type="l", xlab="",
              ylab="Energy sub metering"))
with(rs, points(dt, Sub_metering_2, type="l", col="red"))
with(rs, lines(dt, Sub_metering_3, col="blue"))
legend("topright", bty="n", lty=c(1,1,1), col=c("black","red","blue"), 
       legend=c("Sub_metering_1",
                "Sub_metering_2",
                "Sub_metering_3"))

# Graph 4 goes into bottom right
with(rs, plot(dt, Global_reactive_power, type="l", xlab="datetime"))

## Close the gaphics device
dev.off()