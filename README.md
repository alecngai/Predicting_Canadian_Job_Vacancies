# Capstone Project

All content on this page were authored by [Alec Ngai](https://github.com/alecngai), [Esther Utomakili](https://github.com/EstherUto), [Jerry McGranaghan](https://github.com/JerryMcG), [Wisam Ramadan](https://github.com/WisamRamadan) and Olesya Irkhina.

## Table of Contents
- [Overview of Project](#overview-of-project)
  * [Project Topic](#project-topic)
  * [Data Source](#data-source)
  * [Project Goals](#project-goals)
- [Communication Protocols](#communication-protocols)
- [Results](#results)
  * [Machine Learning](#machine-learning)
  * [Database](#database)
  * [Dashboard](#dashboard)

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

The team made use of a dedicated Slack channel, Zoom and various Google apps to communicate, meeting every Tuesday, Thursday and Saturday

## Results

Prior to diving into the machine learning, the data was cleaned and explored to identify what may be the optimal machine learning model to implement.

### Data Exploration and Cleaning

During the exploration, the team found the data from years 2020 and 2021 was incomplete and decided it was best to drop the little information provided for both years. 

Features kept from the original data include the Reference date, NOC, Job vacancy characteristics, Statistics, UOM, Scaler Factor, Value and Status.

### Machine Learning

Subsequent to deciding on a topic, the team decided that a supervised learning model would be best to achieve the goals of the project. 

The team was left with choosing between a time series model or a regression model and came to the conclusion the latter model was chosen because a time series model would require more information that was found. The time series model will require the team to consider data from 2020 and 2021 which could potentially skew the output data.

The team evaluated what features can be most relevant to the project’s problem and proposed to have the following features as input:

*	Reference Date: quarterly periods when job vacancies existed 
* National Occupancy Classification: The national classification of jobs (NOC)
* Job Characteristics: different Job characteristics and requirements (full time vs part time, education level required)
* Previous Job Vacancies: total number of vacancies available at a certain period.

The output feature will be:

* Current Job vacancies: current total number of vacancies available 

The following diagram shows the machine learning mock up decision process:

![ML_OV](https://raw.githubusercontent.com/alecngai/Data_Capstone_2021_Group_3/main/Machine_Learning/Resources/Machine_Learning_Flow_Chart.png)

### Database

**_Database ERD_**
![ERD_DB](https://user-images.githubusercontent.com/86085601/140614511-1427f635-9ce5-45d7-8238-4f3b1daa528c.jpg)

### Dashboard

## Summary and Conclusion

