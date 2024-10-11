# the required packages
install.packages("readr")
library(readr)
install.packages("fitdistrplus")
library(fitdistrplus)
install.packages("MASS")
library(MASS)

# read my data
my_data <- read.csv('D:\\1.A.Semester4\\Prob2\\FinalProjecet\\life-expectancy-at-different-ages.csv')
head(my_data)
summary(my_data)
#number of rows
print(nrow(my_data))
# cleaning phase
#1-duplicated
sum(duplicated(my_data))
duplicated(my_data)
#2-null values
sum(is.na(my_data))
cleaned_data <- na.omit(my_data)
print(nrow(cleaned_data))
print(paste("Number of rows have NA's Values:",(nrow(my_data)-nrow(cleaned_data))))


#1
summary(cleaned_data)
#3
hist(cleaned_data$Age.0.lifespan, col="red", border="blue", main= "Age.0.lifespan frequency", xlab="Age" , 
     ylab="frequency")

#5
# the mean of Age.0.lifespan
true_mean <- mean(cleaned_data$Age.0.lifespan)
true_mean
# the standard deviation of Age.0.lifespan
true_sd <- sd(cleaned_data$Age.0.lifespan)
true_sd

#6
#a random sample of size 50 from Age.0.lifespan
random_sample1_50 <- sample(cleaned_data$Age.0.lifespan, size = 50, replace = FALSE)
# the sample mean
sample_mean <- mean(random_sample1_50)
sample_mean
# the sample standard deviation
sample_sd <- sd(random_sample1_50)
sample_sd
# point esimate 
mle_1_50 <- fitdist(random_sample1_50,"norm","mle")
mle_1_50

#7
set.seed(123)
# 30 samples of size 50 and 
sample_means30 <- replicate(30, mean(sample(cleaned_data$Age.0.lifespan, size = 50, replace = FALSE)))
sample_means30
# Plot
hist(sample_means30,col = "skyblue", main = "Sampling Distribution of Age 0 Lifespan (30 Samples)", xlab = "Sample Mean")
# Calculate the mean of the sampling distribution
mean_sampling_distribution_30 <- mean(sample_means30)
# the estimated mean age of the population
print(paste("Estimated Mean Age of the Population:", mean_sampling_distribution_30))
# the estimated sd age of the population
sample_sd_30 <- sd(sample_means30)
print(paste("Estimated SD Age of the Population:", sample_sd_30))

#8
set.seed(123)
# Simulate 75 samples of size 50 
sample_means75 <- replicate(75, mean(sample(cleaned_data$Age.0.lifespan, size = 50, replace = FALSE)))
sample_means75
# Plot 
hist(sample_means75,col = "yellow", main = "Sampling Distribution of Age 0 Lifespan (75 Samples)", xlab = "Sample Mean")
mean_sampling_distribution_75 <- mean(sample_means75)
# Display the estimated mean age of the population
print(paste("Estimated Mean Age of the Population:", mean_sampling_distribution_75))
# the estimated sd age of the population
sample_sd_75 <- sd(sample_means75)
print(paste("Estimated SD Age of the Population:", sample_sd_75))

#9
set.seed(123)
# Simulate 500 samples of size 50 
sample_means500 <- replicate(500, mean(sample(cleaned_data$Age.0.lifespan, size = 50, replace = FALSE)))
sample_means500
# Plot 
hist(sample_means500,col = "green", main = "Sampling Distribution of Age 0 Lifespan (500 Samples)", xlab = "Sample Mean")
mean_sampling_distribution_500 <- mean(sample_means500)
print(paste("Estimated Mean Age of the Population:", mean_sampling_distribution_500))
sample_sd_500 <- sd(sample_means500)
print(paste("Estimated SD Age of the Population:",sample_sd_500 ))

#11
set.seed(123)
# 1500 samples of size 20 
sample_means_s20 <- replicate(1500, mean(sample(cleaned_data$Age.0.lifespan, size = 20, replace = FALSE)))
# Plot 
hist(sample_means_s20,col = "blue", main = "Sampling Distribution of Age 0 Lifespan (1500 Samples_s20)", xlab = "Sample Mean")
mean_sampling_distribution_20 <- mean(sample_means_s20)
print(paste("Estimated Mean Age of the Population:",mean_sampling_distribution_20 ))
sample_sd_20 <- sd(sample_means_s20)
print(paste("Estimated SD Age of the Population:",sample_sd_20 ))

#12
# 1500 samples of size 100
set.seed(123)
sample_means_s100 <- replicate(1500, mean(sample(cleaned_data$Age.0.lifespan, size = 100, replace = FALSE)))
# Plot
hist(sample_means_s100,col = "skyblue", main = "Sampling Distribution of Age 0 Lifespan (1500 Samples_s100)", xlab = "Sample Mean")
mean_sampling_distribution_100 <- mean(sample_means_s100)
print(paste("Estimated Mean Age of the Population:", mean_sampling_distribution_100))
sample_sd_100 <- sd(sample_means_s100)
print(paste("Estimated SD Age of the Population:",sample_sd_100 ))

#13
# 1500 samples of size 200
set.seed(123)
sample_means_s200 <- replicate(1500, mean(sample(cleaned_data$Age.0.lifespan, size = 200, replace = FALSE)))
# Plot
hist(sample_means_s200,col = "green", main = "Sampling Distribution of Age 0 Lifespan (1500 Samples_s200)", xlab = "Sample Mean")
mean_sampling_distribution_200 <- mean(sample_means_s200)
print(paste("Estimated Mean Age of the Population:", mean_sampling_distribution_200))
sample_sd_200 <- sd(sample_means_s200)
print(paste("Estimated SD Age of the Population:",sample_sd_200 ))

#15
set.seed(123)
#  1500 samples of size 200
sample_variances_s200 <- replicate(1500, 
  var(sample(cleaned_data$Age.0.lifespan, size = 200, replace = FALSE)))
#sample_variances_s200
#plot
hist(sample_variances_s200, col = "skyblue", main = "Sampling Distribution of Sample Variances (1500 Samples_s2)", xlab = "Sample Variance")
mean_sampling_distribution_1500_200 <- mean(sample_variances_s200)
print(paste("Estimated Mean Age of the Population:",mean_sampling_distribution_1500_200 ))
sample_sd_200_1500 <- sd(sample_variances_s200)
print(paste("Estimated SD Age of the Population:", sample_sd_200_1500))

#16
set.seed(123)
#  1500 samples of size 50 
sample_U1500 <- replicate(1500,
  sample_data <- var(sample(cleaned_data$Age.0.lifespan, size = 50, replace = FALSE)))
# Plot
hist(sample_U1500, col = "skyblue", main = "Sampling Distribution of Sample Variances (1500 Samples)", xlab = "Sample Variance")
mean_sampling_distribution_1500_50 <- mean(sample_U1500)
print(paste("Estimated Mean Age of the Population:",mean_sampling_distribution_1500_50 ))
sample_sd_50_1500 <- sd(sample_U1500)
print(paste("Estimated SD Age of the Population:", sample_sd_50_1500))

#17
set.seed(123)
# Assuming your cleaned data is named 'cleaned_data' and the column for Age 25 lifespan is 'Age.25.lifespan'
random_sample_50 <- sample(cleaned_data$Age.25.lifespan, size = 50, replace = FALSE)
# Maximum Likelihood Estimation (MLE) for mean
MLE <- fitdist(random_sample_50, "norm", method = "mle")
mle_mean <- MLE$estimate[1]
# Method of Moments Estimation (MME) for mean
mme <- fitdist(random_sample_50, "norm", method = "mme")
mme_mean <- mme$estimate[1]
# True mean of the population
true_mean <- mean(cleaned_data$Age.25.lifespan)
true_mean
# Bias calculation
bias_mle <- mle_mean - true_mean
bias_mme <- mme_mean - true_mean
# Print the results
MLE
mme
cat("MLE Estimate for Mean:", mle_mean, "\n")
cat("MME Estimate for Mean:", mme_mean, "\n")
cat("Bias of MLE:", bias_mle, "\n")
cat("Bias of MME:", bias_mme, "\n")

#18
set.seed(123)
# Assuming your cleaned data is named 'cleaned_data' and the column for Age 25 lifespan is 'Age.25.lifespan'
random_sample_200 <- sample(cleaned_data$Age.25.lifespan, size = 200, replace = FALSE)
# Maximum Likelihood Estimation (MLE) for mean
MLE200 <- fitdist(random_sample_200, "norm", method = "mle")
mle_mean200 <- MLE200$estimate[1]
# Method of Moments Estimation (MME) for mean
mme200 <-fitdist(random_sample_200, "norm", method = "mme")
mme_mean200 <- mme200$estimate[1]
# True mean of the population
true_mean200 <- mean(cleaned_data$Age.25.lifespan)
# Bias calculation
bias_mle200 <- mle_mean200 - true_mean200
bias_mme200 <- mme_mean200 - true_mean200
# Print the results
MLE200
mme200
cat("MLE Estimate for Mean:", mle_mean200, "\n")
cat("MME Estimate for Mean:", mme_mean200, "\n")
cat("Bias of MLE:", bias_mle200, "\n")
cat("Bias of MME:", bias_mme200, "\n")

#19
set.seed(123)
#random sample of size 10 from Age.45.lifespan
random_sample_45 <- sample(cleaned_data$Age.45.lifespan, size = 10, replace = FALSE)
#  sample mean
sample_mean_45 <- mean(random_sample_45)
# standard error
standard_error_45 <- sd(random_sample_45) / sqrt(10)
# Calculate t-value for a 95% confidence interval with 10-1 degrees of freedom
t_value <- qt(0.975, df = 10 - 1)
# margin of error
margin_of_error <- t_value * standard_error_45
# Calculate lower and upper bounds of the confidence interval
lower_bound <- sample_mean_45 - margin_of_error
upper_bound <- sample_mean_45 + margin_of_error
Range10 <- upper_bound - lower_bound
# Display the confidence interval
sample_mean_45
sd(random_sample_45)
standard_error_45
t_value
print(paste("95% Confidence Interval for Mean Age 45 Lifespan: [", lower_bound, ",", upper_bound, "]"))
print(paste("The range:",Range10 ))

#20
set.seed(123)
# Extract a random sample of size 50 from Age.45.lifespan
random_sample_45_50 <- sample(cleaned_data$Age.45.lifespan, size = 50, replace = FALSE)
#  sample mean
sample_mean_45_50 <- mean(random_sample_45_50)
#  standard error
standard_error_45_50 <- sd(random_sample_45_50) / sqrt(50)
#  z-value for a 95% confidence interval
z_value <- qnorm(0.975)
#  margin of error
margin_of_error_50 <- z_value * standard_error_45_50
#  lower and upper bounds of the confidence interval
lower_bound_45_50 <- sample_mean_45_50 - margin_of_error_50
upper_bound_45_50 <- sample_mean_45_50 + margin_of_error_50
Range50 <- upper_bound_45_50 - lower_bound_45_50
# Display the confidence interval
print(paste("95% Confidence Interval for Mean Age 45 Lifespan: [", lower_bound_45_50, ",", upper_bound_45_50, "]"))
print(paste("The range:",Range50 ))

#21
# Set the seed for reproducibility
set.seed(123)
# Draw a random sample of size 200 from Age.45.lifespan
random_sample_45_200 <- sample(cleaned_data$Age.45.lifespan, size = 200, replace = FALSE)
# Multiply ages in the sample by 5
sample_ages_multiplied <- random_sample_45_200 * 5
#  expected value (mean) and variance for original ages
original_mean <- mean(random_sample_45_200)
original_variance <- var(random_sample_45_200)
#  expected value (mean) and variance for multiplied ages
multiplied_mean <- mean(sample_ages_multiplied)
multiplied_variance <- var(sample_ages_multiplied)
# Display the results
print(paste("Original Expected Value (E(age)): ", original_mean))
print(paste("Original Variance (var(age)): ", original_variance))
print(paste("Multiplied Expected Value (E(age) * 5): ", multiplied_mean))
print(paste("Multiplied Variance (var(age) * 25): ", multiplied_variance))

#22
sample_ages_added <- random_sample_45_200 + 5
added_mean <- mean(sample_ages_added)
added_variance <- var(sample_ages_added)
# Display the results
print(paste("Original Expected Value (E(age)): ", original_mean))
print(paste("Original Variance (var(age)): ", original_variance))
print(paste("Added Expected Value (E(age) + 5): ", added_mean))
print(paste("Added Variance (var(age)): ", added_variance))
