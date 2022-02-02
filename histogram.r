# Declare a variable to read and store moviesData  
movies <- read.csv("moviesData.csv")

# View the dimension of the data frame 
dim(movies)

hist(movies$runtime)

hist(movies$runtime,
     main="distribution of movies length",
     xlab="runtime of movies",
     xlim = c(0,300),
     col="light blue")

hist(movies$runtime,
     main="distribution of movies length",
     xlab="runtime of movies",
     xlim = c(0,300),
     col="light blue",
     breaks=4)