.# building a frequency of grades
weightgain = c(11,13,19,2,10,1)
weightgain

# weigthgainMean
weigthgainMean = mean(weightgain)
# weigthgainMedian
weigthgainMedian = median(weightgain)
# weigthgainVarience
weigthgainVarience = var(weightgain)
# weigthgainSTD
weigthgainSTD = sd(weightgain)
# weigthgainQuantile
weigthgainQuantile = quantile(weightgain, type = 5)
# weigthgainIQR
weigthgainIQR = IQR(weightgain, type = 5)

