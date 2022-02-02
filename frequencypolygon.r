plot(1, 1, col = "white", xlab = "X", ylab = "Y")            # Draw empty plot

polygon(x = c(0.7, 1.3, 1.2, 0.8),                           # X-Coordinates of polygon
        y = c(0.6, 0.8, 1.4, 1),                             # Y-Coordinates of polygon
        col = "light blue")                                     # Color of polygon
plot(1, 1, col = "black", xlab = "X", ylab = "Y")            # Draw empty plot
polygon(x = c(0.7, 1.3, 1.2, 0.8),                           # X-Coordinates of polygon
        y = c(0.6, 0.8, 1.4, 1),                             # Y-Coordinates of polygon
        col = "light blue",                                     # Color of polygon
        border = "red",                                      # Color of polygon border
        lwd = 3) # Thickness of border



x1 <- 1:10                                                   # X values for frequency polygon
y1 <- c(2, 4, 7, 4, 5, 8, 6, 6, 1, 2) 
plot(x1, y1,                                                 # Plot frequency polygon
     type = "l",                                             # Set line type to line
     lwd = 3)  
polygon(c(1, x1, 10), c(0, y1, 0),                           # X-Y-Coordinates of polygon
        col = "light blue")
points(x1, y1,                                               # Add squares to frequency polygon
       cex = 1,                                              # Size of squares
       pch = 17) # Set point type to triangle
segments(x1, 0, x1, y1)                                      # Add line segments to plot
