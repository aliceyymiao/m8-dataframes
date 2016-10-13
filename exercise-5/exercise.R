# Exercise 5: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
grants <- read.csv("./data/gates_money.csv", stringsAsFactors = FALSE)

# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
org <- grants$organization

# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
as.vector(org)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.value <- mean(grants$total_amount)

# What was the dollar amount of the largest grant?
largest.grant <- which.max(grants$total_amount)

# What was the dollar amount of the smallest grant?
smallest.grant <- which.min(grants$total_amount)

# Which organization received the largest grant?
org.largest.grant <- grants[which.max(grants$total_amount),][['total_spending']]
largest.recipient <- grants[which.max(grants$total_amount),][['']]
# Which organization received the smallest grant?
org.smallest.grant <- grants[which.min(grants$total_amount),][['organization']]

# How many grants were awarded in 2010?
grants.awarded <- length(grants$total_amount)