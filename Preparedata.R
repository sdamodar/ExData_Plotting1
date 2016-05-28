### Read and Prepare data
## Read the subset of data into a dataframe 
## and prepare the data for plotting.
##
## Data set contains data sampled every minute starting
## from (t1) 2006-12-16 17:24:00
##
## Date range used for graphs is 2 days starting  
## from (t2): 2007-02-01 00:00:00
##
## Number of rows to be skipped:
## difftime(t2,t1,units="mins") + 1 = 66637
##
## Number of rows to be read for graphs: 2880 (1440 minutes/day)

# Read into a data frame (rs)
rs <- read.table("household_power_consumption.txt", header=FALSE,
                 sep=";", stringsAsFactors = FALSE, skip=66637, nrows = 2880)

# Apply labes to the record set
colLabels <- c("Date", "Time", "Global_active_power",
               "Global_reactive_power","Voltage",
               "Global_intensity", "Sub_metering_1",
               "Sub_metering_2","Sub_metering_3")
colnames(rs) <- colLabels

# Convert numeric columns to numeric class
rs$Global_active_power <- as.numeric(rs$Global_active_power)
rs$Global_reactive_power <- as.numeric(rs$Global_reactive_power)
rs$Voltage <- as.numeric(rs$Voltage)
rs$Global_intensity <- as.numeric(rs$Global_intensity)
rs$Sub_metering_1 <- as.numeric(rs$Sub_metering_1)
rs$Sub_metering_2 <- as.numeric(rs$Sub_metering_2)
rs$Sub_metering_3 <- as.numeric(rs$Sub_metering_3)

# Derive a new column from Date and Time to store 
# Date&Time in POSIXct classe
rs$dt <- as.POSIXct(paste(rs$Date, rs$Time), 
                    format = "%d/%m/%Y %H:%M:%S")