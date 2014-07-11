## JHU - Coursera - Exploratory Data Analysis
## Project 1 - 2014.7.11
## Plot 1
## Read data
power <- read.table("household_power_consumption.txt",sep=';',head=T)
head(power)
summary(power)
## Change type 
class(power$Global_active_power)
power$Global_active_power <- as.numeric(as.character(power$Global_active_power))
## Subset
subpower <- subset(power,power$Date=='1/2/2007' | power$Date =='2/2/2007')
dim(subpower)
head(subpower)
with(subpower,hist(Global_active_power,col='red',breaks=11,main='Global Active Power',
                   xlab='Global Active Power (kilowatts)'))
png(file='plot1.png')
with(subpower,hist(Global_active_power,col='red',breaks=11,main='Global Active Power',
                   xlab='Global Active Power (kilowatts)'))
dev.off()