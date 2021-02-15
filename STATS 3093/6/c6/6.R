# Example 7.1 An automobile manufacturer has developed a
# new type of bumper, which is supposed to absorb impacts with
# less damage than previous bumpers. The manufacturer has
# used this bumper in a sequence of 25 controlled crashes
# against a wall, each at 10 mph, using one of its compact car
# models.
# The conceptual population consists all such crashes.
# The random variable X of interest is the indicator whether a
# crush results no visible damage.
# X =
#   
# 1; no visible damage
# 0; otherwise
# The random sample of size n = 25: X1;X2; : : : ;X25.
# 10
# Let Y = the (random) number of crashes that result in no
# visible damage to the automobile:
#   Y = X1 + X2 +    + X25
# The parameter to be estimated is p = the proportion of all
# such crashes that result in no damage [alternatively, p = P(no
#                                                             damage in a single crash)].
# If Y is observed to be y = x1 +    + x25 = 15, the most
# reasonable estimator and estimate are
# estimator ^p = Y
# n=X1 +    + Xn
# n
# estimate ^p =y
# n=15/25
# = .60:
#   The sample proportion ^p is a special case of sample mean.
# 
# Studies have shown that a calorie-restricted diet can prolong
# life. Of course, controlled studies are much easier to do with
# lab animals. Here is a random sample of eight lifetimes (days)
# taken from a population of 106 rats that were fed a restricted
# diet.
# 716 1144 1017 1138 389 1221 530 958
# Let X1; : : : ;X8 denote the lifetimes as random variables,
# before the observed values are available. For the population
# mean , a natural estimator is the sample mean:


enw = c(716, 1144, 1017, 1138, 389, 1221, 530, 958)
enwSummary = summary(enw)
enwSummary

enwSD = sd(enw)
enwSD


# In a certain population of sh, the weight of the
# individual sh follow a distribution with mean 250g and
# standard deviation 50g. What is the probability that the total
# weight of a catch of 37 sh is at least 9 kg?


ans = 1-pnorm(9, 37*.25, sqrt(37)*.05)
ans
pnorm(9/37, .25, .05/sqrt(37), lower.tail=F)


























