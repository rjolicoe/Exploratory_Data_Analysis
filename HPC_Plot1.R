HPC_Plot <- function() {
  hist(HPC$Global_active_power, main=paste("Global Active Power"), col="blue", xlab="Global Active Power (in Kilowatts)")
  dev.copy(png, file="HPC_Plot.png", width=480, heigh=480)
  dev.off()
  cat("HPC_Plot.png has been saved in", getwd())
}
HPC_Plot()
