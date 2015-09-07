HPC_Plot4 <- function() {
  par(mfrow=c(2,2))
  #Here we put four graphs onto the same graph.  Similar to an SG panel graph in SAS.  
  
  #Here is the first graph that we will utilize for our panels
  plot(HPC$timestamp, HPC$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  
  #Here is the code for the second graph in our panel
  plot(HPC$timestamp, HPC$Voltage, type="l", xlab="datetime",ylab="Voltage")
  
  #Third HPC Plot is utilized here
  plot(HPC$timestamp, HPC$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
  lines(HPC$timestamp, HPC$Sub_metering_2, col="red")
  lines(HPC$timestamp, HPC$Sub_metering_3, col="blue")
  legend("topright",col=c("black","blue", "red"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1), 
         bty="n", cex=.5)
  plot(HPC$timestamp, HPC$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  
  dev.copy(png,file="HPC_Plot4.png", width=480, height=480)
  dev.off()
  cat("HPC_Plot4.png has been saved in", getwd())
}
HPC_Plot4()