library(tidyverse)
library(DT)
library(dplyr)
library(tidyr)
heart_failure_clinical_records_dataset<-read.csv(file.choose(),header =TRUE)
heartfailure<-heart_failure_clinical_records_dataset
str(heartfailure)
View(heartfailure) 
summary(heartfailure)


glimpse(heartfailure)
names(heartfailure)
 
heartfailure
##as.tibble(heartfailure)
  as.integer(mean(heartfailure$age))

  as.integer(mean(heartfailure$anaemia)) 

  as.integer(mean(heartfailure$creatinine_phosphokinase))
  
  as.integer(mean(heartfailure$diabetes)) 
  
  as.integer(mean(heartfailure$ejection_fraction)) 
  
  as.integer(mean(heartfailure$high_blood_pressure)) 
  
  max(heartfailure$age)
  max(heartfailure) 
  min(heartfailure$age)
  
  datatable(heartfailure)

  