# Title
# Name
# Date
# Description - What is the research question that this data will help us answer?
# What are the greatest predictors for death by heart desease?

# Data from:
# https://www.kaggle.com/andrewmvd/heart-failure-clinical-data


# load packages
library(tidyverse)
library(DT)

# import data
heartfailure <- read_csv("heart_failure_clinical_records_dataset.csv")

# explore the data
glimpse(heartfailure)
summary(heartfailure)
names(heartfailure)

heartfailure


# Convert binary to factor variables (i.e. categorical):
heartfailure <- heartfailure %>% 
  mutate(DEATH_EVENT = as.factor(DEATH_EVENT))

glimpse(heartfailure)


# ....
mean(heartfailure$age)
mean(heartfailure$creatinine_phosphokinase)
mean(heartfailure$high_blood_pressure)
# Remember, the mean and SD are most useful for... normally distributed data
# or at least symmetrical

heartfailure$DEATH_EVENT

# so plot it:
ggplot(heartfailure, aes(x = age, fill = DEATH_EVENT)) +
  geom_histogram()

median(heartfailure$age)

# This doens't make sense for binary data
# 1 = TRUE, 0 = FALSE
mean(heartfailure$anaemia) 
mean(heartfailure$diabetes)

# Maybe makes sense?
as.integer(mean(heartfailure$ejection_fraction)) 

# some more metrics:
max(heartfailure$age)
max(heartfailure) 
min(heartfailure$age)

datatable(heartfailure)

