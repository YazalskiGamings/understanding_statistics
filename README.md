# 95% CI between Bayesian Approach vs Frequentist Approach

Bayesian 95% Confidence Interval Interpretation: 

Bayesian uses parameter Ө to estimate the distribution (P( Ө | Xbar = xbar) ) . Therefore, when we calculate 95% confidence interval under the normal distribution, we assume Ө as a random and the (L, U) as fixed. In other words, P(Ө ∈(L,U)). 

- In Bayesian analysis, our interpretation will be the following; “We are 95% Confident that Ө = 90 is between the interval of (L,U)”. 

Frequentest 95% Confidence Interval Interpretation: 

Frequentest uses parameter xbar, and Ө is fixed and unknown ( P(Xbar | Ө = Ө0) ) . Therefore, when we calculate 95% confidence interval under the normal distribution, we calculate the estimate assuming a null hypothesis holds. E.g Ө0 = Null assuming it is true until we find evidence to reject the null which is ӨA = Alternative. In other words, P((L,U) ∈ Ө).

- In Frequentest analysis, our interpretation will be the following; “We are 95% Confident that (L,U) contains Ө = 90”.

The Simulation invovles 100 samples (n_sim) with each n = 30 (normal distribution), which we then calculate the mean and the upper and lower bounds of a confidence interval.

- BLUE: *STATISTICALLY SIGNFICANT*
- RED: *NOT STATISTICALLY SIGNFICANT*

![Screenshot (853)](https://github.com/YazalskiGamings/Simulation_Study_1/assets/94253253/23ed10e0-6a02-425c-aaf8-f3adb213ebc5)
