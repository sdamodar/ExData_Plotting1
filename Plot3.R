### Plot 3

## Read data from the file and prepare for ploting
source("Preparedata.R")

## Launch the PNG graphics device
png(filename = "Plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

## Plot the graph
with(rs, plot(dt, Sub_metering_1, type="l", xlab="",
              ylab="Energy sub metering"))
with(rs, points(dt, Sub_metering_2, type="l", col="red"))
with(rs, lines(dt, Sub_metering_3, col="blue"))
legend("topright", lty=c(1,1,1), col=c("black","red","blue"), 
       legend=c("Sub_metering_1",
                "Sub_metering_2",
                "Sub_metering_3"))

## Close the gaphics device
dev.off()