if (!exists("hpc"))
    source("load-dataset.R")

png(filename = "figure/plot2.png", bg = "transparent")
attach(hpc)

plot(Time, Global_active_power,
     type = "n",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")
lines(Time, Global_active_power)

detach(hpc)
dev.off()
