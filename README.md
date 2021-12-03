# Capstone Project

All content on this page were authored by [Alec Ngai](https://github.com/alecngai), [Esther Utomakili](https://github.com/EstherUto), [Jerry McGranaghan](https://github.com/JerryMcG), [Wisam Ramadan](https://github.com/WisamRamadan) and [Olesya Irkhina](https://github.com/itekkie).

To view the overview of the project, please refer to the [Google Slides](https://docs.google.com/presentation/d/1rpN_wBFnfzjYkiGqv2N_-4yDQWGsUVga/edit#slide=id.p1) documents authored by the team.

## Table of Contents

- [Overview of Project](#overview-of-project)
  * [Project Topic](#project-topic)
  * [Project Goals](#project-goals)
  * [Data Source](#data-source)
  
- [Communication Protocols](#communication-protocols)
- [Data Exploration and Cleaning](#data-exploration-and-cleaning)
- [Results](#results)
  * [Machine Learning](#machine-learning)
  * [Database](#database)
  * [Dashboard](#dashboard)

## Overview of Project

### Project Topic

The chosen topic for this project is "Understanding and Predicting Labour Vacancies in Various Canadian Sectors".

This topic was selected to understand the Canadian labout market and predict how the job market would look like in the near future. It is important to know how the labour market have changed over the past years and how it will look like in the upcoimg years. Understanding the labour market and looking at potential vacancies could go a long way in avoiding situations such as economic collapse and could also potentially assist with education planning.

### Project Goals

* Predict future potential job vacancies in Canada
* Understand underlying patterns in Canada’s job market

### Data Source

All data used for the project was collected from the official Government of Canada website. The starting dataset was the [Job vacancies, proportion of job vacancies and average offered hourly wage by selected characteristics, quarterly, unadjusted for seasonality - Dataset](https://open.canada.ca/data/en/dataset/67f90ff0-12ea-429a-99a6-7b41c73863a0/resource/2cfa6a73-0b66-4b6e-a07b-7285f0ea774c) which contains number of job vacancies for various industries, categorized by National Occupational Classification (NOC) codes, every month from the first quarter of 2015 to the second quarter of 2021.

The original data set contains standardized column information, however, for the purpose of this project, it was cleaned to contain information needed to achieve the project goals. The original dataset included information such as:
- Divided into Quarters 
- Includes Canada-wide and Province-wide detail 
- National Occupational Classification (NOC) 
- Vacancy Characteristics 
- Statistics describing job vacancies, proportion of job vacancies and average wage

## Communication Protocols

The team made use of a dedicated Slack channel, Zoom and various Google apps to communicate, meeting every Tuesday, Thursday and Saturday. It can be found here [Meeting Minutes](https://drive.google.com/drive/u/0/folders/1DQeqdlZeQvmMsLN6V7zvOZ2vlEtHmIUq).

## Data Exploration and Cleaning

Please refer to the dedicated [ReadME](https://github.com/alecngai/Data_Capstone_2021_Group_3/blob/main/Data_Exploration/README.md) explaining the data exploration process.

## Results

### Machine Learning

Please refer to the dedicated [ReadME](https://github.com/alecngai/Data_Capstone_2021_Group_3/blob/main/Machine_Learning/README.md) explaining the timeSeries machine learning model, and, for Multi-Layer Perceptron regressor used for analyzing and predicting future vacancies.

### Database

The team made use of AWS' Relational Database Service to host the database used for the project. Please refer to the dedicated [ReadME](https://github.com/alecngai/Data_Capstone_2021_Group_3/tree/main/Database#readme) detailing all processes involving the database

### Dashboard

The team decided on making use of Tableau as a visualization tool. Please refer to the dedicated [ReadME](https://github.com/alecngai/Data_Capstone_2021_Group_3/blob/main/Dashboard/README.md) proving images of the Tableau storyboard


