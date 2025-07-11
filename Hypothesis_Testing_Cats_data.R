#Mohammed Saif Wasay, June 2024
#NUID: 002815958
#ALY6010 80685 - Probability Theory and Introductory Statistics
#Module 4: Week 4

cat("\014") # clears console
rm(list = ls()) # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE) #clears packages
options(scipen = 100) # disables scientific notation for entire R session

#Loading Libraries
library(pacman)
p_load(tidyverse)
library(dplyr)

#Installing and loading MASS Package
install.packages("MASS")
library(MASS)

data <- cats

male <- filter(cats, Sex == "M")
female <- filter(cats, Sex == "F")

#Checking Normality for male cat body weights
qqnorm(male$Bwt)
qqline(male$Bwt)
shapiro.test(male$Bwt)

#Checking Normality for female cat body weights
qqnorm(female$Bwt)
qqline(female$Bwt)
shapiro.test(female$Bwt)

#Two Sample Hypothesis testing to check there is no statistical difference between male and female body weight
t.test(male$Bwt, female$Bwt, alternative = "two.sided", var.equal = FALSE, conf.level = .95)

#Loading test scores before workshop
bft_wrkshp <- c(4.6, 7.8, 9.1, 5.6, 6.9, 8.5, 5.3, 7.1, 3.2, 4.4)
#Loading test scores after workshop
aftr_wrkshp <- c(6.6, 7.7, 9.0, 6.2, 7.8, 8.3, 5.9, 6.5, 5.8, 4.9)

# F-test for equality of variances
var.test(bft_wrkshp, aftr_wrkshp)

#Two Sample Hypothesis testing with significance level at 0.05
t.test(bft_wrkshp, aftr_wrkshp, paired = TRUE, conf.level = .95)

#Two Sample Hypothesis testing with significance level at 0.1
t.test(bft_wrkshp, aftr_wrkshp, paired = TRUE, conf.level = .90)

