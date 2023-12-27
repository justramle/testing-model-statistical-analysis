# Testing model

## In part 1: Testing the Distribution of Rotten Oranges
- I determine the distribution of rotten oranges across 1,000 bags—with each bag containing 10 oranges—followed a binomial distribution. The null hypothesis (H₀) shows that the counts of rotten oranges conformed to a binomial distribution with parameters n = 10 and an unknown probability of success p, which denotes the of an orange being rotten. We estimated p to be 0.1142 by summing the product of the observed counts of rotten oranges and their occurrences, then dividing by the total number of oranges

- Next calculated the expected counts for each possible number of rotten oranges per bag, from 0 to 10, using the binomial probability mass function parameterized by our estimated p. These expected counts were then compared to the observed counts, with categories of expected counts less than 5 being combined to meet the assumptions required for a valid chi-square test

- Applying the chi-square goodness-of-fit test, computing test statistic and then the corresponding p-value. The resulting p-value is 3.63x10^-8, is substantially lower than the standard significance level of 0.05. This extremely small p-value led to reject the null hypothesis, indicating that the observed distribution of rotten oranges significantly diverges from the expected binomial distribution

## In part 2: Testing the independence of education level and location of residence for a group of adults
- I conducted a Pearson's Chi-squared test to investigate whether there is an association between the level of college education and the location of residence among a sample of adults. The null hypothesis (H₀) posited that the number of years of college education is independent of the location of residence. In contrast, the alternative hypothesis (Hₐ) stated that there is a dependency between education level and location

- Using a 3x3 matrix that contained the observed frequencies of individuals across different education levels and locations, I applied the chi-squared test. The test yielded a chi-squared statistic of 3.0055 with 4 degrees of freedom df and resulted in a p-value of 0.5569. This p-value is higher than the alpha level of 0.05, indicating that there is not enough statistical evidence to reject the null hypothesis of independence. So based on the sample data, there appears to be no significant relationship between the level of college education and the location of residence


## In part 3: Performing data analysis using R on height_weight dataset

- Determine the 95% and 99% confidence intervals for the variables Height and Weight from the 'SOCR-HeightWeight.csv' dataset by loaded into an R dataframe, and the `t.test()` function was used to perform the analysis

- For the variable Height, a 95% confidence interval was computed, resulting in an interval from approximately 67.70 to 68.02 units. This interval suggests that we can be 95% confident that the true mean height of the population from the sample was falls in this range

- A 99% confidence interval was calculated for the variable Weight, resulting in an interval from approximately 126.89 to 127.27 units. This wider interval reflects a higher confidence level, there is a 99% probability that the true mean weight is within this specified range

- Using t_test() is suitable for estimating the mean of a normally distributed population when the sample size is small and the population standard deviation is unknown

- As a results, it shows the confidence intervals, provide an estimate of the mean with a certain degree of certainty. The intervals are narrow, which generally suggests that the sample size is sufficiently large, and the data does not have a high variance, leading to a more precise estimate of the population mean

