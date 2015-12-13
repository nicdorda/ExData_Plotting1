pow <- read.table("C:/Users/nicdorda/Documents/household_power_consumption.txt",
                  header=TRUE,na.strings="?",stringsAsFactors=FALSE,
                  sep=";"         
)
pow$Date<-as.Date(as.character(pow$Date), "%d/%m/%Y")
pow2 <- pow[pow$Date >= "2007-02-01" & pow$Date <= "2007-02-02", ] 
pow2$dayofweek<-as.POSIXct(paste(pow2$Date, pow2$Time), format="%Y-%m-%d %H:%M:%S")
with(pow2, plot(dayofweek,Sub_metering_1, type="l", xlab="",ylab="Energy sub metering"))
lines(pow2$dayofweek,pow2$Sub_metering_2,col="red")
lines(pow2$dayofweek,pow2$Sub_metering_3,col="blue")

legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),     
       lty=c(1,1,1), 
       col=c("black","red","blue"))
dev.copy(png, file = "plot3.png", width=480,height=480)
dev.off()
