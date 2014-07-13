if (!exists("hpc"))
    source("load-dataset.R")

png(filename = "figure/plot4.png", bg = "transparent")
attach(hpc)

par(mfrow = c(2, 2))
plot(Time, Global_active_power, type = "n", ylab = "Global Active Power", xlab = "")
lines(Time, Global_active_power)

plot(Time, Voltage, type = "n", xlab = "datetime")
lines(Time, Voltage)

plot(Time, Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(Time, Sub_metering_1)
lines(Time, Sub_metering_2, col = "red")
lines(Time, Sub_metering_3, col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       bty = "n",
       lty = c(1,1),
       col = c("black", "red", "blue"))

plot(Time, Global_reactive_power, type = "n", xlab = "datetime")
lines(Time, Global_reactive_power)

detach(hpc)
dev.off()
