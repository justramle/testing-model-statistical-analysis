# Testing the Distribution of Rotten Oranges

# a. Estimate point p
n = 1000 * 10 
rotOran = c(0:10)
observCount = c(334, 369, 191, 63, 22, 12, 9, 0, 0, 0, 0)
p = sum(observCount * rotOran) / n
print(p)

# b. Expected count using dbinom()
expCount = dbinom(c(0:10), 10, p) * 1000
print(expCount)

# c. Combine expected and observed counts where expected is less than 5
expCount_combined = expCount
observCount_combined = observCount

# Loop to combine values
for(i in length(expCount_combined):1) {
  if(expCount_combined[i] < 5) {
    expCount_combined[i-1] = expCount_combined[i-1] + expCount_combined[i]
    observCount_combined[i-1] = observCount_combined[i-1] + observCount_combined[i]
    expCount_combined = expCount_combined[-i]
    observCount_combined = observCount_combined[-i]
  }
}

# d. Compute χ² statistic
x_square = sum((observCount_combined - expCount_combined)^2 / expCount_combined)
print(x_square)

# e. Compute p-value with df = length(expCount_combined) - 1 - 1
df = length(expCount_combined) - 1 - 1
p_value = 1 - pchisq(x_square, df)
print(p_value)
