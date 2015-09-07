HPC_Plot2 <- function() {
  plot(HPC$timestamp, HPC$Global_active_power, type="l", xlab="", ylab="Global Active Power (in Kilowatts)")
  dev.copy(png, file="HPC_Plot2.png", width=800, height=800)
  dev.off()
  cat("HPC_Plot2.png has been saved in", getwd())
}
HPC_Plot2()
