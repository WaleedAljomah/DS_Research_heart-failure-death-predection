# Predict survival of patients with heart failure from 
# serum creatinine and ejection fraction alone
# 10/10/2020
# Waleed aljomah


# publication: https://bmcmedinformdecismak.biomedcentral.com/articles/10.1186/s12911-020-1023-5
# Data source: https://www.kaggle.com/andrewmvd/heart-failure-clinical-data


# Sex - Gender of patient Male = 1, Female =0
# Age - Age of patient
# Diabetes - 0 = No, 1 = Yes
# Anaemia - 0 = No, 1 = Yes
# High_blood_pressure - 0 = No, 1 = Yes
# Smoking - 0 = No, 1 = Yes
# DEATH_EVENT - 0 = No, 1 = Yes

import math 
import numpy as np
import pandas as pd
import matplotlib
import seaborn as sns

#Importing data
heart = pd.read_csv("data\heart_failure_clinical_records_dataset.csv")

#Exploring data
heart.info()
heart.describe()
heart.columns
heart.head()
heart['DEATH_EVENT']
#numbers of death and alive : 
heart['DEATH_EVENT'].value_counts()


#Ejection_Fraction 
#mean of Ejection fraction in all patients

np.mean(heart['ejection_fraction'])

## 2 what is the relation between death and  ejection fraction? 


  


#3 how many patients died with low ejection fraction and high CPK ?




#4 how many patients died with NORMAL ejection fraction AND high CPK > 500 ?
#heart[if 'ejection fraction' <40].value_counts()


#5 how many patients died with NORMAL ejection_fraction and Normal CPK ? 
#6 compare 3 with 4 AND 5 





# Relations with other variables----


#7 what is the relation between death and age of the patients? 

 


#8 what is the distribution of age + low ejection fraction + death (3 variables)




#9 what is the relation between death and diabetes ? 




#10 what is the relation between death and low ejection fraction with diabetes and high CPK ? 




#11 what is the relation between death and low ejection fraction with smoking?
