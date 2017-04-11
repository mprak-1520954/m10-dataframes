# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
scores <- c(31, 25, 20, 6)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
against <- c(24, 31, 25, 6)

# Combine your two vectors into a dataframe
my.data <- data.frame(scores, against)

# Create a new column "diff" that is the difference in points

my.data$diff <- abs(my.data$scores - my.data$against)

# Create a new column "won" which is TRUE if the Seahawks wom
my.data$won <- my.data$scores > my.data$against

# Create a vector of the opponents
opponents <- c('Dolphins', 'Rams', '49ers', 'Jets')

# Assign your dataframe rownames of their opponents
rownames(my.data) <- opponents
