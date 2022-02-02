# Clear R workspace
rm(list = ls() ) 

# Declare a variable to read and store moviesData  
movies <- read.csv("moviesData.csv")

#SCATTER PLOT
plot(x=movies$imdb_rating,
     y=movies$audience_score)

plot(x=movies$imdb_rating,
     y=movies$audience_score,
     main="Review Analysis",
     xlab="IMDB Rating",
     ylab="Audiance score",
     xlim = c(0,10),
     ylim = c(0,100),
     col="light blue")

cor(movies$imdb_rating,movies$audience_score)
