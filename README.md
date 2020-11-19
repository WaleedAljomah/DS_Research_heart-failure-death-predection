Heart Failure death prediction
=================

#### What is heart failure ? 

Heart failure develops when the heart fails to pump blood at a rate commensurate with the requirements of body.



#### Why is it important to predict bad prognosis in heart failure patients?

Decompensated heart failure lead to multiple admissions, which a burden on health system and to the patients socioeconomic status. Advanced heart failure indicators as high creatinine and presence of diabetes and arrhythmias which is the leading cause of sudden cardiac death.



#### Study about prediction of bad prognosis in heat failure patients, other than the publiction used in this analysis:

A retrospective study that evaluated data from the 2010 Nebraska Hospital Discharge files for 4319 hospitalizations of 3521 heart failure patients admitted to 79 in-state hospitals reported that risk factors for in-hospital mortality in these patients were increasing age, the presence of comorbidities, and length of hospital day.

#### conclusion,
Presence of a tool that can help doctor for predicting a prognosis of heart failure patients based on data can be collected on admission (e.g. age, presence of comorbidities , basic laboratory investigations) can be helpful in medical practice.

#### Heart failure death predection data set: 
This is a data set about multiple variables which can be used to predict the death in heart failure patients. 


#### variables : 
Sex - Gender of patient Male = 1, Female =0
Age - Age of patient
Diabetes - 0 = No, 1 = Yes
Anaemia - 0 = No, 1 = Yes
High_blood_pressure - 0 = No, 1 = Yes
Smoking - 0 = No, 1 = Yes
DEATH_EVENT - 0 = No, 1 = Yes
creatinine_phosphokinase
ejection_fraction
platelets
serum_creatinine
serum_sodium


source of [data](https://www.kaggle.com/andrewmvd/heart-failure-clinical-data)
based on  [publication](https://bmcmedinformdecismak.biomedcentral.com/articles/10.1186/s12911-020-1023-5)

I use this data to try raising question and think how the relation of multiple variables can be made and I do Exploratory data analysis and plotting using `tidyverse` package. 