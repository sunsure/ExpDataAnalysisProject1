if (!exists("hpc"))
    source("load-dataset.R")

png(filename = "figure/plot1.png", bg = "transparent")
hist(hpc$Global_active_power,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col = "red")
dev.off()
