## Data Exploration and Cleaning

## Purpose 

To explore the raw data from the Canadian labour census and gauging its usefulness in relevance to the project’s problem, understanding outliers and preparing the data for the machine learning models and visualization. 

## Methodology.
To explore dataset we use non-graphical and graphical methods.

### Step 1. Determine the dataset that best aligned with project’s problem.

To explore the dataset [Job vacancies, proportion of job vacancies and average offered hourly wage](https://open.canada.ca/data/en/dataset/67f90ff0-12ea-429a-99a6-7b41c73863a0/resource/2cfa6a73-0b66-4b6e-a07b-7285f0ea774c), we import necessary python libraries such as Pandas, Matplotlib, hvplot.pandas.

### Step 2. Assess data uniqueness and completeness.
The result of checking the columns and their corresponding data types is shown as following:

![image](https://user-images.githubusercontent.com/68247343/142800299-91ba7013-37f3-46b3-b88b-3e5265653123.png)

### Step 3. Determine the data accuracy.

#### - Determine the general data accuracy.
  1. The raw dataset contains redundant columns and many data quality. So, we keep only acceptable data quality such as: A- excellent, B- very good, C- good, D- acceptable.
  2. We drop redundant columns of the dataset as followings: DGUID, UOM_ID, SCALAR_FACTOR, SCALAR_ID, VECTOR, COORDINATE, STATUS, SYMBOL, UOM, TERMINATED, DECIMALS.
  3. Next, we check that there isn’t any duplicate rows and null values.

#### - Exploring Statistics column: Job Vacancies.
  1. The plotting different columns shows results as followings:
 
![image](https://user-images.githubusercontent.com/68247343/142800323-557949da-9a65-4fef-a479-cc98e2e726c5.png) 

![image](https://user-images.githubusercontent.com/68247343/142800340-5edf238f-6f9f-4150-ac83-da64da94389f.png)

  2. Detecting Outliers shows results as shown in the screenshot below.

![image](https://user-images.githubusercontent.com/68247343/142933507-3eb5e63f-5c7c-4012-ae99-96232cc52e31.png)

  3. Also, we find out 2-10% of the difference of missing data by quarters comparing blocks of selected data such as total vacancies for Canada / all occupation/ all type of job with filtering by Provinces/ only Broad NOC / Full-time, Part-time type of job.

![image](https://user-images.githubusercontent.com/68247343/142800355-7a7d76e7-66c0-426d-b29c-aa0513cf833a.png)

#### - Exploring Statistics column: Average Hourly Wage.

  1.	For Average Hourly Wage data set we have the same problem as aggregated data and non-aggregated data in the same column for GEO / NOC / Job characteristic columns. So, we decided to select only non-aggregated data for visualization.
  2.	Plotting average wage to find out seasonality and data pattern.

![image](https://user-images.githubusercontent.com/68247343/142933592-86ccda7b-af19-4304-a32b-7c244149e351.png)

  3.	Detecting Outliers shows results as shown in the screenshot below

![image](https://user-images.githubusercontent.com/68247343/142933606-9d0508e1-1aa6-408a-b5e0-75657c69b710.png)

#### Exploring Statistics column: Percent Job Vacancies.

Percent Job Vacancies is a data set which contains proportional data for each GEO / NOC / Job vacancy characteristics elements. So, we decided to ignore this dataset for the project.

![image](https://user-images.githubusercontent.com/68247343/142933652-23639eda-d26d-4917-bbfa-ef49988afb6f.png)
