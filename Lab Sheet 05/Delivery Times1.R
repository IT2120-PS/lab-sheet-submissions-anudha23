Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
histogram <- hist(Delivery_Times$Delivery_Time_.minutes., 
                  breaks = seq(20, 70, length.out = 10), 
                  right = FALSE, 
                  main = "Histogram of Delivery Times", 
                  xlab = "Delivery Time", 
                  ylab = "Frequency")
breaks <- round(histogram$breaks)
freq <- histogram$counts
cum.freq <- cumsum(freq)
ogive_points <- c(0, cum.freq)

plot(breaks, ogive_points, 
     type = "l", 
     main = "Cumulative Frequency Polygon (Ogive)", 
     xlab = "Delivery Time", 
     ylab = "Cumulative Frequency", 
     ylim = c(0, max(cum.freq)))
