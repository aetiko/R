# question 2
physEffects = c("O","O", "N", "J", "C", "F", "B", "B", "F", "O", "J", "O", "O", "M",
                "O", "F", "F", "O", "O", "N", "O", "N", "J", "F", "J", "B", "O", "C",
                "J", "O", "J", "J", "F", "N", "O", "B", "M", "O", "J", "M", "O", "B",
                "O", "F", "J", "O", "O", "B", "N", "C", "O", "O", "O", "M", "B", "F",
                "J", "O", "F", "N")
physEffectsTable = table(physEffects)
physEffectsTable
# create histogram from table

physEffectsHistogram = barplot(physEffectsTable/60, space = 0, col = "blue", xlab = "Health complaint", ylab = "Relative Frequency", main = "Phycological Effects of Work stress and pesticide Exposure")

# question 3a)
timeForLowSupport = c(0.736, 1.011, 0.863, 1.064, 0.865, 1.109, 0.913, 1.132,
                      0.915, 1.140, 0.937, 1.153, 0.983, 1.253, 1.007, 1.394)
# giving the mean, 1st, 3rd quartiles, median, mean and max
timeSummarry = summary(timeForLowSupport)
timeSummarry
# getting the standard deviation
timeSTD = sd(timeForLowSupport)
timeSTD
# five number summary
timeFiveSummary = quantile(timeForLowSupport, type = 5)
timeFiveSummary
#interquatile range
timeIQR = IQR(timeForLowSupport, type = 5)
timeIQR

# 3c) construction for histogram
timeHist = hist(timeForLowSupport, main = "Steel Structures", xlab = "TIme in hrs", ylab = "Density")
# stemplot
timeStem = stem(timeForLowSupport, scale = 1)
# boxplot
timeBox = boxplot(timeForLowSupport, main = "Steel structures", ylab = "Time in hrs", horizontal = TRUE)
# getting the skewness
install.packages("moments")
library(moments)
timeSkewness = skewness(timeForLowSupport)
timeSkewness

# Question 4
# a
val = c(325, 325, 334, 339, 356, 356, 359, 359,
        363, 364, 364, 366, 369, 370, 373, 373,
        374, 375, 389, 392, 393, 394, 397, 402,
        403, 424)
#interQUatile range
valIQR = IQR(val, type = 5)
valIQR
valStem = stem(val)
valSumm = fivenum(val)
valSumm

# c
valBox = boxplot(val, main = " Question 4c", xlab = "Values", horizontal = TRUE)
# skewness
valSkewness = skewness(val)
valSkewness

# Question 5
# Comaparative boxplots
ed = c(0, 0, 0, 0, .1, .1, .1, .1, .2, .2, .3, .3,
       .3, .4, .5, .7, .8, 1.0, 1.5, 2.7, 2.8, 3.5, 4.0, 8.9,
       9.2, 11.7, 21.0)
# skewness
edSkewnes = skewness(ed)
edSkewnes
#postively skewed
noned = c(0, 0, 0, 0, 0, .1, .1, .1, .1, .2, .2, .2,
          .3, .3, .3, .4, .5, .5, .6, .8, .9, 1.0, 1.2, 1.4,
          1.5, 1.7, 2.0, 3.2, 3.5, 4.1, 4.3, 4.8, 5.0, 5.6, 5.9, 6.0,
          6.4, 7.9, 8.3, 8.7, 9.1, 9.6, 9.9, 11.0, 11.5, 12.2, 12.7, 14.0,
          16.6, 17.8)
comBoxPlot = boxplot(ed, noned)
nonedSkewness = skewness(noned)
nonedSkewness
# also postively skewed







