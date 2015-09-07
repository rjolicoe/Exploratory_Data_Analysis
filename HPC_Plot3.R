HPC_Plot3 <- function() {
  plot(HPC$timestamp, HPC$Sub_metering_1, type="l", xlab="Date", ylab= "Energy sub metering")
  lines(HPC$timestamp, HPC$Sub_metering_2, col="red")
  lines(HPC$timestamp, HPC$Sub_metering_3, col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1),lwd=c(1,1))
  dev.copy(png,file="HPC_Plot3.png", width=800, height= 800)
  dev.off()
  cat("HPC_Plot3.png has been saved in", getwd())
}
HPC_Plot3()
