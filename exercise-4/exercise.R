# Exercise 4: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
# Make sure *not* to read the strings as factors
grants <- read.csv("C:/Users/Madeleine/Desktop/info201/m10-dataframes/exercise-4/data/gates_money.csv", stringsAsFactors = FALSE)

# Use the View function to look at your data


# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount
  
# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
org <- grants$organization

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grant <- mean(grants$total_amount)

# What was the dollar amount of the largest grant?
max.grant <- max(grants$total_amount)

# What was the dollar amount of the smallest grant?
min.grant <- min(grants$total_amount)

# Which organization received the largest grant?
highest.org <- grants$org[grants$total_amount == max.grant]

# Which organization received the smallest grant?
lowest.org <- grants$org[grants$total_amount == min.grant]

# How many grants were awarded in 2010?
