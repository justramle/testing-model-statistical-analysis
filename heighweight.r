# Steps for performing data analysis using R with height_weight dataset
library(tidyverse)


# Load the dataset into a dataframe called 'Subjects'
Subjects <- read.csv("SOCR-HeightWeight.csv")

# Display the head of the dataset
str(Subjects)
head(Subjects)

# Extract the 'Height' and 'Weight' variables from the dataframe to ensure they are the correct data type
Height <- Subjects$Height
Weight <- Subjects$Weight
# print(Height)
# print(Weight)

# Perform a t-test to estimate the mean and 95% confidence interval for 'Height'
Height_test <- t.test(Height, conf.level = 0.95)
print("95% Confidence interval for Height:")
print(Height_test$conf.int)

# Perform a t-test to estimate the mean and 99% confidence interval for 'Weight'
Weight_test <- t.test(Weight, conf.level = 0.99)
print("99% Confidence interval for Weight:")
print(Weight_test$conf.int)
