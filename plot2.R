#Exploratory Data Analysis
#Class project 1

# 
#Load data. Data file should be in current directory
#

library(date)

#Load file use ";" as separator and convert "?" as na

power<-read.table("household_power_consumption.txt", sep=";", na.strings="?",stringsAsFactors=F, header=TRUE)

#Concatenate Time and date and create a new column of date data type
power$Date_Time<-strptime(paste(power[,1],power[,2]),"%d/%m/%Y %H:%M:%S")
 
#Filter data to work only with data of interest
filtered_power<-power[power$Date %in% c('1/2/2007','2/2/2007'),]


#
#Plotting Starts
#

##Plot 2

png(filename="plot2.png", width=480, height=480)
with(filtered_power, plot(Date_Time, Global_active_power, type="l", xlab=" ", ylab="Global Active Power (kilowatts)") )
dev.off()


