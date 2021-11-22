# Capstone Project

All content on this page were authored by [Alec Ngai](https://github.com/alecngai), [Esther Utomakili](https://github.com/EstherUto), [Jerry McGranaghan](https://github.com/JerryMcG), [Wisam Ramadan](https://github.com/WisamRamadan) and [Olesya Irkhina](https://github.com/itekkie).

## Table of Contents

- [Overview of Project](#overview-of-project)
  * [Project Topic](#project-topic)
  * [Data Source](#data-source)
  * [Project Goals](#project-goals)
- [Communication Protocols](#communication-protocols)
- [Data Exploration and Cleaning](#data-exploration-and-cleaning)
- [Results](#results)
  * [Machine Learning](#machine-learning)
  * [Database](#database)
  * [Dashboard](#dashboard)

## Overview of Project

### Project Topic

The chosen topic for this project is "Understanding and Predicting Labour Vacancies in Various Canadian Sectors".

This topic was selected to understand the Canadian labout market and predict how the job market would look like in the near future. It is important to know how the labour market hase been affected by COVID-19 and how it will look like post-COVID. Understanding the labour market and looking at potential vacancies could go a long way in avoiding situations such as economic collapse and could also potentially assist with education planning.

### Data Source

All data used for the project was collected from the official Government of Canada website. The starting dataset was the [Job vacancies, proportion of job vacancies and average offered hourly wage by selected characteristics, quarterly, unadjusted for seasonality - Dataset](https://open.canada.ca/data/en/dataset/67f90ff0-12ea-429a-99a6-7b41c73863a0/resource/2cfa6a73-0b66-4b6e-a07b-7285f0ea774c) which contains number of job vacancies for various industries, categorized by National Occupational Classification (NOC) codes, every month from the first quarter of 2015 to the second quarter of 2021.

The original data set contains standardized column information, however, for the purpose of this project, it was cleaned to contain information needed to achieve the project goals. The original dataset included information such as:
- Divided into Quarters 
- Includes Canada-wide and Province-wide detail 
- National Occupational Classification (NOC) 
- Vacancy Characteristics 
- Statistics describing job vacancies, proportion of job vacancies and average wage

### Project Goals

The goal of this project is to make use of machine learning to predict and determine the amount of job vacancies in current quarter based on previous trends.

## Communication Protocols

The team made use of a dedicated Slack channel, Zoom and various Google apps to communicate, meeting every Tuesday, Thursday and Saturday. It can be found here [Meeting Minutes](https://github.com/alecngai/Data_Capstone_2021_Group_3/tree/main/Google_Drive_Clone_2021_11_06/Meeting%20Minutes).

## Data Exploration and Cleaning

The purpose of Data Exploration is to explore the raw data from the Canadian labour census and gauging its usefulness in relevance to the project’s problem, understanding outliers and preparing the data for the machine learning models and visualization.

#### Step 1. To explore the dataset, we import necessary python libraries such as pandas, matplotlib, hvplot.pandas.
#### Step 2. Assess data uniqueness and completeness.
The result of checking the columns and their corresponding data types is shown as following:
![image](https://user-images.githubusercontent.com/68247343/142787530-c558cf8f-9f49-4ac5-a3a3-0d736a50082a.png)
#### Step 3. Determine the data accuracy
1.	The raw dataset contains redundant columns and many data quality. So, we keep only acceptable data quality such as: A- excellent, B- very good, C- good, D- acceptable.
2.	We drop redundant columns of the dataset as followings: DGUID, UOM_ID, SCALAR_FACTOR, SCALAR_ID, VECTOR, COORDINATE, STATUS, SYMBOL, UOM, TERMINATED, DECIMALS.
3.	Next, we check that there isn’t any duplicate rows and null values.
4.	The plotting different columns shows results as followings:
![image](https://user-images.githubusercontent.com/68247343/142787548-bf801ff9-2358-4895-ad59-8afca9e6bfda.png)
d)	Job_characteristics contains set of job analytics together. So, we decided to analyse only type of work: Full-time and Part-time.
e)	NOC contains all element of their hierarchy. So, we chose to analyse only high NOC’s level as Broad occupational category.
5.	Lastly, we find out 2-10% of difference of missing data by quarters comparing blocks of selected data such as total vacancies for Canada, all occupation, all type of job with filtering by Provinces, only Broad NOC, Full/part-time type of job.

## Results

Prior to diving into the machine learning, the data was cleaned and explored to identify what may be the optimal machine learning model to implement.

### Machine Learning

Please refer to the dedicated ReadME explaining the machine learning models used for analyzing and predicting future vacancies.

### Database

The team made use of AWS' Relational Database Service to host the database used for the project. Please refer to the dedicated [ReadME](https://github.com/alecngai/Data_Capstone_2021_Group_3/tree/main/Database#readme) detailing all processes involving the database

### Dashboard

The team decided on making use of Tableau as a visualization tool. Please refer to the dedicated ReadME detailing all processes involving the dashboard


