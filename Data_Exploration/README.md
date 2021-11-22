# Data Exploration and Cleaning

The purpose of Data Exploration is to explore the raw data from the Canadian labour census and gauging its usefulness in relevance to the project’s problem, understanding outliers and preparing the data for the machine learning models and visualization.

## Step 1. To explore the dataset, we import necessary python libraries such as pandas, matplotlib, hvplot.pandas.

## Step 2. Assess data uniqueness and completeness.
The result of checking the columns and their corresponding data types is shown as following:
![image](https://user-images.githubusercontent.com/68247343/142787530-c558cf8f-9f49-4ac5-a3a3-0d736a50082a.png)

## Step 3. Determine the data accuracy.
1.  The raw dataset contains redundant columns and many data quality. So, we keep only acceptable data quality such as: A- excellent, B- very good, C- good, D- acceptable.
2.  We drop redundant columns of the dataset as followings: DGUID, UOM_ID, SCALAR_FACTOR, SCALAR_ID, VECTOR, COORDINATE, STATUS, SYMBOL, UOM, TERMINATED, DECIMALS.
3.  Next, we check that there isn’t any duplicate rows and null values.
4.  The plotting different columns shows results as followings:
![image](https://user-images.githubusercontent.com/68247343/142787548-bf801ff9-2358-4895-ad59-8afca9e6bfda.png)

d)  Job_characteristics contains set of job analytics together. So, we decided to analyse only type of work: Full-time and Part-time.

e)  NOC contains all element of their hierarchy. So, we chose to analyse only high NOC’s level as Broad occupational category.

5.  Lastly, we find out 2-10% of difference of missing data by quarters comparing blocks of selected data such as total vacancies for Canada, all occupation, all type of job with filtering by Provinces, only Broad NOC, Full/part-time type of job.
![image](https://user-images.githubusercontent.com/68247343/142787860-143cfe55-64cd-4b67-919a-07ec47fa5827.png)

## Results

Prior to diving into the machine learning, the data was cleaned and explored to identify what may be the optimal machine learning model to implement.
