pow <- read.table("C:/Users/nicdorda/Documents/household_power_consumption.txt",
                  header=TRUE,na.strings="?",stringsAsFactors=FALSE,
                  sep=";"         
)
pow$Date<-as.Date(as.character(pow$Date), "%d/%m/%Y")
pow2 <- pow[pow$Date >= "2007-02-01" & pow$Date <= "2007-02-02", ] 
pow2$dayofweek<-as.POSIXct(paste(pow2$Date, pow2$Time), format="%Y-%m-%d %H:%M:%S")
with(pow2, plot(dayofweek,Global_active_power, type="l", xlab="",ylab="Global Active Power"))
dev.copy(png, file = "plot2.png", width=480,height=480)
dev.off()