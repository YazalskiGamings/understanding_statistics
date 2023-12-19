---
title: "Simulation_Study"
author: "Everest Young"
date: "2023-12-16"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


```{r}
set.seed(123)

# Small Sample
nsim <- 10
n_small <- 10

small<-data.frame(aov.p.val=rep(NA, nsim),
                kruskal.p.val=rep(NA, nsim)) 

for (i in 1:nsim) {
  # Normal small n delta = 0 
  normal_small <-  data.frame(
  Group = rep(c("A", "B", "C"), each = n_small),
  Value = c(rnorm(n_small, mean = 0, sd = 1),
            rnorm(n_small, mean = 0, sd = 1),
            rnorm(n_small, mean = 0, sd = 1))
) # Parameters = delta -> 0

  # ANOVA + Kruskal n = 10   # Output we get p val 
  output_aov <- aov(normal_small$Value~normal_small$Group)
  output_kruskal <- kruskal.test(normal_small$Value~normal_small$Group)
  
  # Shove this into data frame
  small$aov.p.val[i] <- summary(output_aov)[[1]]$`Pr(>F)`[1]
  small$kruskal.p.val[i] <- output_kruskal$p.val

  
}

small


small_non<-data.frame(aov.p.val=rep(NA, nsim),
                kruskal.p.val=rep(NA, nsim)) 

for (i in 1:nsim) {
 # Non Normal small n delta = 0
  normal_large <-  data.frame(
  Group = rep(c("A", "B", "C"), each = n_small),
  Value = c(rpois(n_small, lambda = 5),
            rpois(n_small, lambda = 5),
            rpois(n_small, lambda = 5)
)) # Parameters = delta -> 0

  # ANOVA + Kruskal n = 10   # Output we get p val 
  output_aov1 <- aov(normal_large$Value~normal_large$Group)
  output_kruskal1 <- kruskal.test(normal_large$Value~normal_large$Group)
  
  # Shove this into data frame
  small_non$aov.p.val[i] <- summary(output_aov1)[[1]]$`Pr(>F)`[1]
  small_non$kruskal.p.val[i] <- output_kruskal1$p.val

}

small_non


small1_power<-data.frame(aov.p.val=rep(NA, nsim),
                kruskal.p.val=rep(NA, nsim)) 


for (i in 1:nsim) {
  # Normal small n Power
  normal_small <-  data.frame(
  Group = rep(c("A", "B", "C"), each = n_small),
  Value = c(rnorm(n_small, mean = 1, sd = 1),
            rnorm(n_small, mean = 5, sd = 1),
            rnorm(n_small, mean = 10, sd = 1))
) # Parameters = delta -> 0

  # ANOVA + Kruskal n = 10   # Output we get p val 
  output_aov <- aov(normal_small$Value~normal_small$Group)
  output_kruskal <- kruskal.test(normal_small$Value~normal_small$Group)
  
  # Shove this into data frame
  small1_power$aov.p.val[i] <- summary(output_aov)[[1]]$`Pr(>F)`[1]
  small1_power$kruskal.p.val[i] <- output_kruskal$p.val

  
}

small1_power 


small1_non_power<-data.frame(aov.p.val=rep(NA, nsim),
                kruskal.p.val=rep(NA, nsim)) 

for (i in 1:nsim) {
 # Non Normal Small n Power
  normal_large <-  data.frame(
  Group = rep(c("A", "B", "C"), each = n_small),
  Value = c(rpois(n_small, lambda = 2),
            rpois(n_small, lambda = 8),
            rpois(n_small, lambda = 14)
)) # Parameters = delta -> 0

  # ANOVA + Kruskal n = 10   # Output we get p val 
  output_aov1 <- aov(normal_large$Value~normal_large$Group)
  output_kruskal1 <- kruskal.test(normal_large$Value~normal_large$Group)
  
  # Shove this into data frame
  small1_non_power$aov.p.val[i] <- summary(output_aov1)[[1]]$`Pr(>F)`[1]
  small1_non_power$kruskal.p.val[i] <- output_kruskal1$p.val

}

small1_non_power


```

```{r}
# Large Sample
nsim <- 10
n_large <- 100

large<-data.frame(aov.p.val=rep(NA, nsim),
                kruskal.p.val=rep(NA, nsim)) 

for (i in 1:nsim) {
  # Normal large n delta = 0 
  normal_small <-  data.frame(
  Group = rep(c("A", "B", "C"), each = n_large),
  Value = c(rnorm(n_large, mean = 0, sd = 1),
            rnorm(n_large, mean = 0, sd = 1),
            rnorm(n_large, mean = 0, sd = 1))
) # Parameters = delta -> 0

  # ANOVA + Kruskal n = 10   # Output we get p val 
  output_aov <- aov(normal_small$Value~normal_small$Group)
  output_kruskal <- kruskal.test(normal_small$Value~normal_small$Group)
  
  # Shove this into data frame
  large$aov.p.val[i] <- summary(output_aov)[[1]]$`Pr(>F)`[1]
  large$kruskal.p.val[i] <- output_kruskal$p.val

  
}

large


large_non<-data.frame(aov.p.val=rep(NA, nsim),
                kruskal.p.val=rep(NA, nsim)) 

for (i in 1:nsim) {
 # Non Normal large n delta = 0
  normal_large <-  data.frame(
  Group = rep(c("A", "B", "C"), each = n_large),
  Value = c(rpois(n_large, lambda = 5),
            rpois(n_large, lambda = 5),
            rpois(n_large, lambda = 5)
)) # Parameters = delta -> 0

  # ANOVA + Kruskal n = 10   # Output we get p val 
  output_aov1 <- aov(normal_large$Value~normal_large$Group)
  output_kruskal1 <- kruskal.test(normal_large$Value~normal_large$Group)
  
  # Shove this into data frame
  large_non$aov.p.val[i] <- summary(output_aov1)[[1]]$`Pr(>F)`[1]
  large_non$kruskal.p.val[i] <- output_kruskal1$p.val

}

large_non


large_power<-data.frame(aov.p.val=rep(NA, nsim),
                kruskal.p.val=rep(NA, nsim)) 


for (i in 1:nsim) {
  # Normal large n Power
  normal_small <-  data.frame(
  Group = rep(c("A", "B", "C"), each = n_large),
  Value = c(rnorm(n_large, mean = 1, sd = 1),
            rnorm(n_large, mean = 5, sd = 1),
            rnorm(n_large, mean = 10, sd = 1))
) # Parameters = delta -> 0

  # ANOVA + Kruskal n = 10   # Output we get p val 
  output_aov <- aov(normal_small$Value~normal_small$Group)
  output_kruskal <- kruskal.test(normal_small$Value~normal_small$Group)
  
  # Shove this into data frame
  large_power$aov.p.val[i] <- summary(output_aov)[[1]]$`Pr(>F)`[1]
  large_power$kruskal.p.val[i] <- output_kruskal$p.val

  
}

large_power


large_non_power<-data.frame(aov.p.val=rep(NA, nsim),
                kruskal.p.val=rep(NA, nsim)) 

for (i in 1:nsim) {
 # Non Normal large n Power
  normal_large <-  data.frame(
  Group = rep(c("A", "B", "C"), each = n_large),
  Value = c(rpois(n_large, lambda = 2),
            rpois(n_large, lambda = 8),
            rpois(n_large, lambda = 14)
)) # Parameters = delta -> 0

  # ANOVA + Kruskal n = 10   # Output we get p val 
  output_aov1 <- aov(normal_large$Value~normal_large$Group)
  output_kruskal1 <- kruskal.test(normal_large$Value~normal_large$Group)
  
  # Shove this into data frame
  large_non_power$aov.p.val[i] <- summary(output_aov1)[[1]]$`Pr(>F)`[1]
  large_non_power$kruskal.p.val[i] <- output_kruskal1$p.val

}

large_non_power
```


```{r}
library(ggplot2)
library(dplyr)
library(tidyr)


# Visualization x2 (non normal normal)

# Normal
# x = sample size
# y = power 
small1_power
large_power
for(i in 1:10){
  small1_power$sample_size[i] <- 10
  large_power$sample_size[i] <- 100
}
merge_power_normal <- merge(small1_power,large_power,all = T)
merge_power_normal <- gather(merge_power_normal,key = "Test",value = "Power",-sample_size)
ggplot(merge_power_normal, mapping = aes(x = as.factor(sample_size), y = Power)) + geom_point(aes(shape = Test, color = Test)) + theme_light() + labs(title = "NORMAL CONDITION - power ", y = "Power", x = "Sample Size")

# Non normal
small1_non_power
large_non_power
for(i in 1:10){
  small1_non_power$sample_size[i] <- 10
  large_non_power$sample_size[i] <- 100
}
merge_power_non_normal <- merge(small1_non_power,large_non_power,all = T)
merge_power_non_normal <- gather(merge_power_non_normal,key = "Test",value = "Power",-sample_size)
ggplot(merge_power_non_normal, mapping = aes(x = as.factor(sample_size), y = Power)) + 
  geom_point(aes(shape = Test,color = Test)) + theme_light() + labs(title = "NON-NORMAL CONDITION - power", y = "Power", x = "Sample Size")

# Normal
# x = sample size
# y = p val

small
large
for(i in 1:10){
  small$sample_size[i] <- 10
  large$sample_size[i] <- 100
}
merge_p_normal <- merge(small,large,all = T)
merge_p_normal <- gather(merge_p_normal,key = "Test",value = "Pval",-sample_size)
merge_p_normal %>% filter(Pval < 0.05)
ggplot(merge_p_normal, mapping = aes(x = as.factor(sample_size), y = Pval)) + geom_point(aes(shape = Test, color = Test)) + theme_light() + labs(title = "NORMAL CONDITION - pval ", y = "Pval", x = "Sample Size")+ geom_hline(yintercept=0.05, col = "red")

# Non normal
small_non
large_non
for(i in 1:10){
  small_non$sample_size[i] <- 10
  large_non$sample_size[i] <- 100
}
merge_p__nonnormal <- merge(small_non,large_non,all = T)
merge_p__nonnormal <- gather(merge_p__nonnormal,key = "Test",value = "Pval",-sample_size)
merge_p__nonnormal %>% filter(Pval < 0.05)
ggplot(merge_p__nonnormal, mapping = aes(x = as.factor(sample_size), y = Pval)) + geom_point(aes(shape = Test, color = Test)) + theme_light() + labs(title = "NON NORMAL CONDITION - pval", y = "Pval", x = "Sample Size")+ geom_hline(yintercept=0.05, col = "red")


# Tables
table_merge_p__nonnormal <- merge_p__nonnormal %>% filter(Pval < 0.05)
table_merge_p__nonnormal
table_merge_p_normal <- merge_p_normal %>% filter(Pval < 0.05)
table_merge_p_normal
```





