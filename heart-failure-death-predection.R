# Predict survival of patients with heart failure from 
# serum creatinine and ejection fraction alone
# 10/10/2020
# Waleed aljomah

#load package
library(tidyverse)

# publication: https://bmcmedinformdecismak.biomedcentral.com/articles/10.1186/s12911-020-1023-5
# Data source: https://www.kaggle.com/andrewmvd/heart-failure-clinical-data
# Sex - Gender of patient Male = 1, Female =0
# Age - Age of patient
# Diabetes - 0 = No, 1 = Yes
# Anaemia - 0 = No, 1 = Yes
# High_blood_pressure - 0 = No, 1 = Yes
# Smoking - 0 = No, 1 = Yes
# DEATH_EVENT - 0 = No, 1 = Yes
heart <- read.csv("data/heart_failure_clinical_records_dataset.csv")



#Explore data----
head(heart)
summary(heart)



# determining most important numbers----

#number of patients (death_Event),  death or alive?


heart %>%
  mutate(DEATH_EVENT = recode(DEATH_EVENT,
                              `0` = "Alive",
                              `1` = "Death")) %>%
  count(DEATH_EVENT)




#plot patients (death_Event),  death or alive?


heart %>%
  mutate(DEATH_EVENT = recode(DEATH_EVENT,
                              `0` = "Alive",
                              `1` = "Death")) %>%
  ggplot(aes(x = DEATH_EVENT)) +
  geom_bar()







# relationship between Death AND Low Ejection fraction AND CPK ---- 

# 1 number of deaths with low ejection fraction (<40%)

#Ejection_Fraction 
#mean of Ejection fraction in all patients

mean_Ejection_Fraction_all <- mean(heart$ejection_fraction)

#low Ejection fraction in deaths patients only

low_Ejection_Fraction_death <- heart %>%
  filter(heart$DEATH_EVENT == '1', heart$ejection_fraction < 40)

#mean of Ejection fraction in death and low Ejection fraction

mean_Ejection_Fraction_death_Low_EF <-mean(low_Ejection_Fraction_death$ejection_fraction)

#mean of Ejection fraction in death 
#mean_Ejection_fraction_death <- heart %>%
  #filter(DEATH_EVENT == '1') %>%
  #mean(ejection_fraction)

#data set of deaths only
deaths <- heart %>%
  filter(DEATH_EVENT == '1')




# 2 what is the relation between death and low ejection fraction? 



ggplot(heart, aes(ejection_fraction, fill = factor(DEATH_EVENT))) +
  geom_histogram(aes(y = ..density..), position = position_dodge(width = 0), alpha = 0.5) +
  geom_density(alpha = 0.4, color = NA)




ggplot(deaths$ejection_fraction, aes(c(10, 20, 30, 40, 50, 60), deaths$ejection_fraction)) +
  geom_point()




#EF_mean_all <- mean(heart$ejection_fraction)
#EF_mean_death <- mean(deaths)


  


#3 how many patients died with low ejection fraction and high CPK ?

low_Ejection_Fraction_death %>%
  filter(creatinine_phosphokinase > 500) %>%
  nrow()

#4 how many patients died with NORMAL ejection fraction AND high CPK > 500 ?
# (count)
heart %>%
  filter(ejection_fraction > 40) %>%
  filter(DEATH_EVENT == '1') %>%
  filter(creatinine_phosphokinase > 500) %>%
  nrow()
  
  

#5 how many patients died with NORMAL ejection_fraction and Normal CPK ? 

deaths %>%
  filter(ejection_fraction > 40) %>%
  filter(creatinine_phosphokinase < 500) %>%
  nrow()
  





# Relations with other variables----


#7 what is the relation between death and age of the patients? 

# plot Age distribution in all patients 

heart %>%
  ggplot(aes(x = age)) +
  geom_bar()

#plot Age distribution in deaths only 

deaths %>%
  ggplot(aes(x = age)) +
  geom_bar()

#8 what is the distribution of age + low ejection fraction + death (3 variables)




#9 what is the relation between death and diabetes ? 




#10 what is the relation between death and low ejection fraction with diabetes and high CPK ? 




#11 what is the relation between death and low ejection fraction with smoking?
