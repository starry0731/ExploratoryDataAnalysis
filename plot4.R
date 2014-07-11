#plot 4
head(subpower)
class(subpower$Voltage)
subpower$Voltage <- as.numeric(as.character(subpower$Voltage))
with(subpower,plot(Time,Voltage,xlab='datetime',type='l'))

class(subpower$Global_reactive_power)
subpower$Global_reactive_power <- as.numeric(as.character(subpower$Global_reactive_power))

with(subpower,plot(Time,Global_reactive_power,type='l',xlab='datetime'))

par(mfrow=c(2,2))
with(subpower,plot(x=Time,y=Global_active_power,type='l',ylab='Global Active Power (kilowatts)',xlab=''))
with(subpower,plot(Time,Voltage,xlab='datetime',type='l'))

with(subpower,plot(Time,Sub_metering_1,type='l',ylab='Energy sub metering',xaxt='n'))
lines(subpower$Time,subpower$Sub_metering_2,type='l',col='red')
lines(subpower$Time,subpower$Sub_metering_3,type='l',col='blue')
legend('topright', lty=c(1,1,1),col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),cex=0.4,
       box.lty = 0,box.lwd=0)
box()

with(subpower,plot(Time,Global_reactive_power,type='l',xlab='datetime'))
dev.copy(png,file='plot4.png')
dev.off()
