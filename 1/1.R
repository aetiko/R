# Data Preprocessing

# Import the dataset
dataset = read.csv('Data.csv')

#Missing data values
#by taking the mean of the columns

dataset$Age = ifelse(is.na(dataset$Age), 
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)), 
                     dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary), 
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)), 
                        dataset$Salary)

# encoding the variable to categorical data
# country
dataset$Country = factor(dataset$Country,
                         levels = c('France', 'Spain', 'Germany'),
                         labels = c(1, 2,3))

# Purchased
dataset$Purchased = factor(dataset$Purchased,
                           levels = c('No', 'Yes'),
                           labels = c(0,1))

# splitting dataset into training set and test set
#install.packages('caTools')
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling better for accuracy
training_set[, 2:3] =  scale(training_set[, 2:3])
test_set[, 2:3] = scale(test_set[, 2:3])
