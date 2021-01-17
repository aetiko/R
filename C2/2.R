# building a frequency of grades
grades<-c(54, 77, 91,87, 99, 80, 85, 75, 100)
grades
# creating the histogram
hist(grades, freq = F , col = "blue")
# creating the stem and leaf plot
stem(grades, scale = 1)
# read in the grades files
# make a graphical representation of dotplot(stripchart)
gradesCsv = read.csv('Grades.csv')
View(gradesCsv)
# dot plot on gpa
stripchart(gradesCsv$GPA, method = "stack", pch = "*", cex = 2, xlab = "GPA", ylab = "Ummm")
hist(gradesCsv$Math, freq = F, col = "red")