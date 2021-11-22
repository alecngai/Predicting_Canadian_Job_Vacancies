## Data Exploration and Cleaning

## Purpose 

To explore the raw data from the Canadian labour census and gauging its usefulness in relevance to the project’s problem, understanding outliers and preparing the data for the machine learning models and visualization. 

## Methodology
### Step 1.
To explore the dataset, we import necessary python libraries such as Pandas, Matplotlib, hvplot.pandas.

### Step 2. Assess data uniqueness and completeness
The result of checking the columns and their corresponding data types is shown as following:

screen

### Step 3. Determine the data accuracy
1.	The raw dataset contains redundant columns and many data quality. So, we keep only acceptable data quality such as: A- excellent, B- very good, C- good, D- acceptable.
2.	We drop redundant columns of the dataset as followings: DGUID, UOM_ID, SCALAR_FACTOR, SCALAR_ID, VECTOR, COORDINATE, STATUS, SYMBOL, UOM, TERMINATED, DECIMALS.
3.	Next, we check that there isn’t any duplicate rows and null values.
4.	The plotting different columns shows results as followings:

screen 

scree 3

5.	Lastly, we find out 2-10% of difference of missing data by quarters comparing blocks of selected data such as total vacancies for Canada / all occupation/ all type of job with filtered by Provinces/ only Broad NOC / Full-time, Part-time type of job.

screen 4
