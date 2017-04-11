# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme
my.data <- data.frame(USPersonalExpenditure, stringsAsFactors = FALSE)

# Create a new variable by passing the USPersonalExpenditure to the data.frame function


# What are the column names of your dataframe?
colnames(my.data)

# Why are they so strange?


# What are the row names of your dataframe?
rownames(my.data)

# Create a column `category` that is equal to your rownames
my.data["category"] <- rownames(my.data)

# How much money was spent on personal care in 1940?
personal.1940 <- my.data[4, 1]

# How much money was spent on Food and Tobacco in 1960
food.1960 <- my.data[1, 5]

# What was the highest expenditure category in 1960?
highest.exp.1960 <- my.data[1, 6]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
highest <- function(year) {
  return (my.data$category[my.data[year] == max(my.data[year])])
}

# Using your function, determine the highest spending category of each year
highest('X1940')
highest('X1945')
highest('X1950')
highest('X1955')
highest('X1960')

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list

