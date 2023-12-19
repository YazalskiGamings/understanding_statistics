# Simulation_Study_1

Simulation Study Comparing Methods of ANOVA and Kruskal-Wallis 

Overview of the Methods:
ANOVA and Kruskal-Wallis are two methods which we will compare in the simulation study.  First, ANOVA is a parametric test used for comparing means of three or more groups. There are three assumptions: 1. Each group mean is normally distributed (either sample size is larger than 30 or normal distribution of sample). 2. Equal variances are assumed. 3. The data is independent. This method is robust to minor or moderate violations of assumptions.

When we encounter the situation that any group can’t be assumed normal, we need to use a nonparametric method, which is Kruskal-Wallis test. It is a non-parametric method used for comparing medians of three or more independent groups when data is not normal. This is unlike ANOVA which compares the means of three or more groups. There are three assumptions: 1: Observations are independent from each other. 2: Continuous variables. 3: Test relies on the value of data having the same form but different centers. This method is more robust than parametric tests since assumptions of normality and homogeneity of variances is not required. Throughout this study, we ultimately want to find which method is more efficient by looking through metrics of power and p-value.

Overview of Simulation Settings:
nsim: number of times the simulation gets generated (nsim = 10)
n_small: small sample size (n = 10)
n_large: large sample size (n = 100)
rpois: non-normal distribution (Poisson)
Non - Normal when test are Δ ≠ 0
Lambda: the mean number of events within a given interval of time or space is set to λ = 2,8,14
Non - Normal when test are Δ = 0
Lambda: the mean number of events within a given interval of time or space is set to λ = 5
rnorm: normal distribution 
Normal when test are Δ ≠ 0
Mean is set to 1,5,10 and standard deviation is set to 1
Normal when test are Δ = 0
Mean is set to 0 and standard deviation is set to 1

We made sure that for both n_small and n_large, we created a scenario where the data is normally distributed and non normally distributed. Furthermore, a p value that correctly rejects the null hypothesis when null is false (power). Therefore, we were able to produce 8 data frames where all the p values and power results of Kruskal Wallis and ANOVA from the 10 simulations are stored in those data frames. We then conducted data manipulation such as matrix transposition to visualize the results of our p values and powers using scatter plots. In total, we will create 4 graphics and 2 tables. 2 graphics illustrate the results of the Power vs Sample size under normal conditions of ANOVA and Kruskal Wallis, while the other 2 graphics illustrate the results of, again, Power vs Sample size except under Non-Normal conditions of ANOVA and Kruskal Wallis. The 2 tables will show the statistically significant entries where alpha = 0.05.

Overview of Metrics:
We will calculate and compare metrics of alpha rates (significance level or alpha rate is the probability of rejecting the null hypothesis when it is actually true), power (probability of correctly rejecting a false null hypothesis as it measures the ability of a statistical test to detect an effect when it truly exists), and p-value (p-value is a measure of the evidence against a null hypothesis). We will compare these metrics under different sample sizes (10, 100) and different assumptions (normal, non-normal).


Results of Simulation:

Under normal conditions, we can conclude that the power of Kruskal-Wallis is much larger than that of ANOVA when sample size is 10, it is more effective at detecting true effects or differences when they exist. For sample size 100, both ANOVA and Kruskal-Wallis have similar power. We can also know that power is similar when sample size is large under normal conditions. 

Under non-normal conditions, the power of Kruskal-Wallis is much higher than that of ANOVA when sample size is 10. However, it is similar to that of ANOVA when sample size is 100, so we can conclude that it is more effective for Kruskal-Wallis at detecting true effects or differences when they exist when sample size is small and nonnormal. For sample size 100, both ANOVA and Kruskal-Wallis have similar power. We can also know that power is similar when sample size is large under non normal conditions.

a) RED LINE= significance level 0.05
Under the normal conditions, there is only one point statistically significant below the red line (α = 0.05) for a large sample size of ANOVA test. Thus, we can likely conclude that the ANOVA test is more efficient than Kruskal-Wallis when sample size is large. Under normal and small sample size conditions, we can’t find whether one test is more efficient than the other because there is no statistically significant point. 



b) RED LINE= significance level 0.05
Under the non normal conditions, there are two points from ANOVA test and one point from Kruskal-Wallis test with a sample size of 100 (three points statistically significant at α = 0.05). Thus, we can conclude that under non-normal conditions and large sample size, both ANOVA and Kruskal-Wallis tests are efficient. While under non-normal and small sample size conditions, both ANOVA and Kruskall-Wallis tests are not efficient because there is no point statistically significant.



Discussion:
Throughout our simulation of small and large sample sizes using ANOVA and Kruskal-Wallis tests, we were able to conclude that under normal conditions, power for Kruskal-Wallis is higher than ANOVA when using a small sample size. Under non-normal conditions, power for Kruskal-Wallis is also higher than ANOVA when using a small sample size. Using a large sample size, power for Kruskal-Wallis and ANOVA are effectively the same under both normal and non-normal conditions.	

Regarding p-values, ANOVA, under normal conditions, can be found to be statistically significant (at α = 0.05) and more efficient for large sample sizes. Under non-normal conditions, both ANOVA and Kruskal-Wallis can be found to be statistically significant (at α = 0.05) and sufficiently effective for large sample sizes. Under normal and non-normal conditions for small sample sizes, there were no discernible differences in p-value.

Some limitations to this simulation study may be that it is possible that our observed results do not reflect expected results. For p-values, we thought we would see Kruskal-Wallis to be unanimously more effective than ANOVA under small sample sizes and under non-normal conditions; however, neither of these conditions showed statistical significance (at α = 0.05) for Kruskal-Wallis under either small sample sizes or under non-normal conditions. It is possible that this could be explained by ANOVA’s relative robustness to violations in normality. In such cases of violations in normality, Kruskal-Wallis is still recommended due to its higher power under small sample sizes. Further testing should be performed to validate Kruskal-Wallis’s effectiveness over ANOVA under small sample sizes.







