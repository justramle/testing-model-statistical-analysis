# Testing the independence of education level and location of residence for a group of adults.

data = matrix(c(15,8,6,12,15,8,8,9,7), nrow = 3, ncol = 3)

# chi-squared executed:
chi = chisq.test(data)
print(chi)

# b. Observed matrix is retrieved.
obsMatrix = chi$observed
print(obsMatrix)

# c. Expected matrix is retrieved.
expMatrix = chi$expected
print(expMatrix)

# d. The χ² statistic is already part of the chi test object.
x_square = chi$statistic
print(x_square)

# e. The critical value for α = 0.05 and appropriate df (which should be checked).
df = (nrow(data) - 1) * (ncol(data) - 1)  # This reflect the actual matrix dimensions
x_alpha = qchisq(.05, df = df, lower.tail = FALSE)
print(x_alpha)

# f. P-value should be taken directly from the test result.
p_value = chi$p.value
print(p_value)