
# ggplot
library(ggplot2)

# Bayesian Approach 95% CI

set.seed(1)

n_sim <- 100
mu <- 90
CI_P <- 0.95
SD <- 10
n <- 30

result <- data.frame(unique_val = rep(1:n_sim),
                     mean_val = rep(NA,n_sim),
                     lower = rep(NA, n_sim),
                     upper = rep(NA,n_sim)
                     ) 

for (i in 1:n_sim) {
  
  # Generate 100 Samples of size n = 30
  norm_dist <- rnorm(n,mean = mu,sd = SD)
  
  # Get 95% CI and Mean
  mean_norm <- mean(norm_dist)
  lower_conf_int <- mean_norm - ((1.96) * (SD/sqrt(n)))
  upper_conf_int <- mean_norm + ((1.96) * (SD/sqrt(n)))
  
  # Get the Lower and Upper and put it in the result dataframe
  result$mean_val[i] <- mean_norm
  result$lower[i] <- lower_conf_int
  result$upper[i] <- upper_conf_int
  
  
}

ggplot(result, mapping = aes(x = unique_val, y = mean_val, ymin = lower , ymax = upper)) +
  geom_errorbar(aes(color = ifelse(lower > 90 | upper < 90,"red","black")),width=0.2) + 
  geom_point(size=2) + geom_hline(yintercept = 90, size = 1) + theme_minimal() + theme(legend.position = "none") + ggtitle( "95% CI of Normal Population n = 30") 
