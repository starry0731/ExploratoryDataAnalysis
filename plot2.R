## Plot 2
class(subpower$Time)
subpower$Time <- strptime(paste(subpower$Date,subpower$Time), "%d/%m/%Y %H:%M:%S") ## Important!
head(subpower)
with(subpower,plot(x=Time,y=Global_active_power,type='l',ylab='Global Active Power (kilowatts)',xlab=''))
dev.copy(png,file='plot2.png')
dev.off()