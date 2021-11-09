# Capstone Project

All content on this page were authored by [Alec Ngai](https://github.com/alecngai), [Esther Utomakili](https://github.com/EstherUto), [Jerry McGranaghan](https://github.com/JerryMcG), [Wisam Ramadan](https://github.com/WisamRamadan) and [Olesya Irkhina](https://github.com/itekkie).

## Table of Contents

- [Overview of Project](#overview-of-project)
  * [Project Topic](#project-topic)
  * [Data Source](#data-source)
  * [Project Goals](#project-goals)
- [Communication Protocols](#communication-protocols)
- [Results](#results)
  * [Data Exploration and Cleaning](#data-exploration-and-cleaning)
  * [Machine Learning](#machine-learning)
    + [Data Transformation:](#data-transformation-)
    + [Description of how data was split into training and testing sets](#description-of-how-data-was-split-into-training-and-testing-sets)
    + [Explanation of model choice plan](#explanation-of-model-choice-plan)
    + [Technology](#technology)
  * [Database](#database)
  * [Dashboard](#dashboard)
- [Summary and Conclusion](#summary-and-conclusion)

## Overview of Project

### Project Topic

The chosen topic for this project is "Understanding and Predicting Labour Vacancies in Various Canadian Sectors".

This topic was selected to understand how the labour market will look like post-COVID. Understanding the labour market and looking at potential vacancies could go a long way in avoiding situations such as economic collapse and could also potentially assist with education planning.

### Data Source

All data used for the project was collected from the official Government of Canada website. The starting dataset was the [Job vacancies, proportion of job vacancies and average offered hourly wage by selected characteristics, quarterly, unadjusted for seasonality - Dataset](https://open.canada.ca/data/en/dataset/67f90ff0-12ea-429a-99a6-7b41c73863a0/resource/2cfa6a73-0b66-4b6e-a07b-7285f0ea774c) which contains number of job vacancies for various industries, categorized by National Occupational Classification (NOC) codes, every month from the first quarter of 2015 to the second quarter of 2021.

The original data set contains standardized column information, however, for the purpose of this project, it was cleaned to contain information needed to achieve the project goals. 

### Project Goals

The goal of this project is to make use of machine learning to predict and determine the amount of job vacancies in current quarter based on previous trends.

## Communication Protocols

The team made use of a dedicated Slack channel, Zoom and various Google apps to communicate, meeting every Tuesday, Thursday and Saturday. It can be found here [Meeting Minutes](https://github.com/alecngai/Data_Capstone_2021_Group_3/tree/main/Google_Drive_Clone_2021_11_06/Meeting%20Minutes).

## Results

Prior to diving into the machine learning, the data was cleaned and explored to identify what may be the optimal machine learning model to implement.

### Data Exploration and Cleaning

During the exploration, the team found the data from years 2020 and 2021 was incomplete and decided it was best to drop the little information provided for both years. 

Features kept from the original data include the Reference date, NOC, Job vacancy characteristics, Statistics, UOM, Scaler Factor, Value and Status.

### Machine Learning

Subsequent to deciding on a topic, the team decided that a supervised learning model would be best to achieve the goals of the project. 

The team was left with choosing between a time series model or a regression model and came to the conclusion the latter model was chosen because a time series model would require more information that was found. The time series model will require the team to consider data from 2020 and 2021 which could potentially skew the output data.

#### Data Transformation:
* Several columns will need transformation, text extraction and encoding to be usable in the machine learning model i.e. NOC, Job Characteristics, all types, full time and parttime will all be encoded to be used in our machine learning model. 
* Unnecessary columns will be dropped to preserve space and simplicity, these columns will be: DGUID, UOM/UOMID since we are focusing on Job vacancies it is assumed to be a Number value, SCALAR_FACTOR, SCALAR_ID, VECTOR, COORDINATE, STATUS, SYMBOL, TERMINATED, DECIMALS.  


The team evaluated what features can be most relevant to the project’s problem and proposed to have the following features as input:

*	Reference Date: quarterly periods, in format of string which we will convert to int for analysis. 
*	National Occupancy Classification: The national classification of jobs (NOC), this is also a string and will be encoded using one hot encoding method
* Job Characteristics: different Job characteristics and requirements (full time vs part time, education level required) this is also a string and will be encoded using one hot encoding method
* Previous Job Vacancies: total number of vacancies available in correlations to reference data, stored as an integer. 

The output feature will be:

* Current Job vacancies: current total number of vacancies available 

#### Description of how data was split into training and testing sets

The data will be split into training and testing randomly with stratification. However, there will be specific requirements for the split data, if the feature is built for a specific date it must consist of previous data i.e feature built for Jan 2016 must consist of Oct 2015 data. 

#### Explanation of model choice plan

The project problem and desired output calls for a supervised machine learning model. The team will evaluate regression models using sample data and decide on the best model that fits the project’s purpose. This is because we are treating the data as continuous, using this method we will predict the trend of job vacancies in Canada in different National Occupational Classifications. 

#### Technology 

The current dataset we utilize for our machine learning model has been cleaned once and currently stored on google drive at 500mb. We will use Google Collab to run our machine learning module. 


The following diagram shows the machine learning mock up decision process:

**_Machine Learning Overview_**

![ML_OV](https://github.com/alecngai/Data_Capstone_2021_Group_3/blob/main/Machine_Learning/Resources/Machine_Learning_Flow_Chartv3.png)

### Database

To create “Predicting Labour Vacancies in Various Canadian Sectors” the team imported the raw data into SQL by using PostgreSQL and created the database engine that allows Pandas to communicate with SQL. 

The team decided to use the next integration of provisional database as below:

![image](https://user-images.githubusercontent.com/68247343/140799815-55737326-ba8f-4800-8db7-209ab3c1fe49.png)

Also the Entity Relationship Diagram (ERD) with relationships was created as below.
 
To create “Predicting Labour Vacancies in Various Canadian Sectors” the team imported the raw data into SQL by using PostgreSQL and created the database engine that allows Pandas to communicate with SQL. 
Also the Entity Relationship Diagram (ERD) with relationships was created as below.

**_Database ERD_**

![ERD_DB](https://user-images.githubusercontent.com/86085601/140614511-1427f635-9ce5-45d7-8238-4f3b1daa528c.jpg)

### Dashboard

The team decided on making use of Tableau as a visualization tool. The goal is to make use of Tableau's dashboard feature to create heatmaps that would perfectly show information such as vacancies by province, vacancies by industry and other machine learning outputs. An example dashboard is provided below.

**_Dashboard Mockup_**

![Capstone_Dashboard_v1](https://user-images.githubusercontent.com/86085601/140632658-7f032709-a3c6-4db3-8fbc-460220f0230c.png)


## Summary and Conclusion

