# barplot of binomial pmf
barplot(dbinom(0:10, 10, 0.2), names.arg = 0:10, width = .05, space = 25,
        xlab = "x", ylab = "Probabilities")

likelyhood = function(p){ p^3*(1-p)^7}

x =  seq(0.01, 0.99, by=.01)
curve(likelyhood(x), xlab = "p", ylab = "likelyHood")

abline(v=.3)
abline(h=likelyhood(.3))                                                                         

# loglikelyhood function
loglikelyhood = function(p){log(likelyhood(p))}
curve(loglikelyhood(x), xlab = "p", ylab = "Log Likely Hood")
abline(v=.3)
abline(h=loglikelyhood(.3))
