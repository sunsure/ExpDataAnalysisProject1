if (!exists("hpc"))
    source("load-dataset.R")

png(filename = "figure/plot3.png", bg = "transparent")
attach(hpc)

plot(Time, Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(Time, Sub_metering_1)
lines(Time, Sub_metering_2, col = "red")
lines(Time, Sub_metering_3, col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1),
       col = c("black", "red", "blue"))

detach(hpc)
dev.off()
