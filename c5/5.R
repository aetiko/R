# A large population of seeds of the princess bean Phaseotus
# vulgaris is to be sampled. The weights of the seeds in the
# population follows a normal distribution with mean  = 500
# mg and SD  = 120 mg.

# What percentage of seeds have weight less than 500
# mg? between 260 and 740 mg?

phasoetus = pnorm(740, 500, 120) - pnorm(260, 500, 120)
phasoetus

# What is the probability that a random sample of size
# n = 4 will have a mean between 260 and 740 mg?

phasoetus = pnorm(740, 500, 60) - pnorm(260, 500, 60)
phasoetus

# If we take a large number of random samples of size
# n = 400, 97:5% of the sample means will be below

ph = qnorm(0.975, 500, 6)
ph

# Generate M = 1000 samples, each of size n = 30, from
# an exponential distribution with rate parameter  = 1.
# Calculate the sample mean for each sample.
# Make a histogram for the 1000 sample means.

sampleMean = NULL
m = 1000 #number of samples
n = 30 #sample size, this ansers depends on the sample, if sample increased, becomes more bell shaped
for (i in 1:m) {
  x = rexp(n, rate = 1) #rate=1 / scale rate lambda; scale 
  sampleMean = c(sampleMean, mean(x))
}
mean(sampleMean)
sd(sampleMean)
hist(sampleMean, freq = F, ylim = c(0, 3))
x = sampleMean
curve(dnorm(x, mean = 1, sd=0.18), add = T)