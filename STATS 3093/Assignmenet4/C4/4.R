# M: number of samples
# n: sample size
M = 20
n = 30
mu = 100
sigma = 15

for(m in 1:M){
  x = rnorm(n, mean = mu, sd = sigma)
  xbar = mean(x)
  ME = 1.96*sigma/sqrt(n)
  lowerLomit =xbar-ME
  UpperLimit = xbar+ME
  Outside = ifelse(mu<lowerLomit | mu>UpperLimit, 1, 0)
  cat("Sample", m, ": ",
      round(c(xbar-ME, xbar+ME), 2), "\t", Outside, "\n")
}
