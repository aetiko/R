# import the data file 
data = read.csv('Data.csv')
# view the data
View(data)
# make a table for each observation
GenderTable = table(data$Gender)
PreferenceTable = table(data$Preference)
# View(PreferenceTable)
# View(GenderTable)
# making a bar plot for each table
GenderBarPlot = barplot(GenderTable, ylab = "Frequency Gender", xlab = "Categories")
PreferenceBarPlot = barplot(PreferenceTable, ylab = "Frequency Preference", xlab = "Categories")
# plotting both gender and preference on the same bar plot
#  make a cross table for both
crossTable = table(data$Gender, data$Preference)
# View(crossTable)
crossBarPlot = barplot(crossTable, beside = T, ylab = "Frequency", xlab = "Categories")

