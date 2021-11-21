# MLP Regressor 

## Description of preliminary data preprocessing

- Changed all dates in "REF_DATE" to string format ("%Y-%M"), so we can split into year and quarter
- Dropped columns: "id", "noc_code","predicted_vacancies"
- Dropped rows: GEO == "Canada", NOC == "Total, all occupations", REF_DATE == '2020-10', '2021-01', '2021-04'
- renamed all columns to uppercase and simplier names for future coding
- Changed "VALUE" to int

## Description of preliminary feature engineering and preliminary feature selection, including their decision-making process

- Creation of Year (Int) and Quarter (Int) columns from REF_DATE (String)
 
this will allow the ML model to see the trend in quarters within the year more accuractely

- Creation of previous quarter vacancy (PREVIOUS_VACANCY (Int))

![prevVacancies](https://raw.githubusercontent.com/alecngai/Data_Capstone_2021_Group_3/main/Machine_Learning/Resources/MLP/Prev_Vacancies.png)

This is an important column for the MLP Regressor model so it can more accurately predict the next quarters vacancy amount. 

- We also use GEO, NOC and JOB Char for these three columns we do label encoding first, then one hot coding, afterwards remerging into main dataframe. 

GEO - Contains 13 Provinces of Canada :  'Alberta', 'British Columbia',
        'Manitoba', 'New Brunswick', 'Newfoundland and Labrador',
        'Northwest Territories', 'Nova Scotia', 'Nunavut', 'Ontario',
        'Prince Edward Island', 'Quebec', 'Saskatchewan', 'Yukon'

This was an decided to use only the provinces so we could see how the location affects job vacancies, and throughout the data we can see it makes a big difference depending on what location you are. After the two encodings we end up with 13 new columns and we drop GEO column.

NOC - Contains 10 broad classifications: 'Business, finance and administration occupations',
        'Health occupations', 'Management occupations',
        'Natural and applied sciences and related occupations',
        'Natural resources, agriculture and related production occupations',
        'Occupations in art, culture, recreation and sport',
        'Occupations in education, law and social, community and government services',
        'Occupations in manufacturing and utilities',
        'Sales and service occupations',
        'Trades, transport and equipment operators and related occupations'

NOC allows us to see which industry on a broad level and the affect on the job vacancies and trends. After two encodings we have 10 new columns and we drop the old NOC column.

JOB_CHAR: Contains two characteristic: 'Full-time', 'Part-time'

There are many more in the original data set, however, we chose just these two for simplicity and their relation to job vacancies, since some characteristics do not have any correlation to each other. i.e. Job Vacancy for 1-5 days. 

We have a total of 28 Features: 'YEAR',
 'QUARTER',
 'PREVIOUS_VACANCY',
 'Alberta',
 'British Columbia',
 'Manitoba',
 'New Brunswick',
 'Newfoundland and Labrador',
 'Northwest Territories',
 'Nova Scotia',
 'Nunavut',
 'Ontario',
 'Prince Edward Island',
 'Quebec',
 'Saskatchewan',
 'Yukon',
 'Business, finance and administration occupations',
 'Health occupations',
 'Management occupations',
 'Natural and applied sciences and related occupations',
 'Natural resources, agriculture and related production occupations',
 'Occupations in art, culture, recreation and sport',
 'Occupations in education, law and social, community and government services',
 'Occupations in manufacturing and utilities',
 'Sales and service occupations',
 'Trades, transport and equipment operators and related occupations',
 'Full-time',
 'Part-time'

## Description of how data was split into training and testing sets

The training and testing data was split into 80% training, and 20% testing. With a total of 2456 rows for input, 492 rows for testing, 1964 for training. 

Both X_train and X_test are scaled before fitting the model, this will help improve accuracy of our model due to the nature of year and quarter being vectors.

## Explanation of model choice, including limitations and benefits

We tried three different models to work on the dataset, Linear regression, MLPRegressor, and Random Forest

Linear regression was too simple for predictions, the accuracy although was 0.96 was the worst out of the three models, therefor, we decided to not use this model and try different ones. 

![LR](https://raw.githubusercontent.com/alecngai/Data_Capstone_2021_Group_3/main/Machine_Learning/Resources/MLP/LR_TEST.png)

MLPRegressor, had the highest accuracy and ability to make accurate predictions. After exporting the testing data and predictions into tableau we could see it accurately predicted trends, and had the highest accuracy, thus we chose this model for future analysis and prediction of our data. 

![MLP](https://raw.githubusercontent.com/alecngai/Data_Capstone_2021_Group_3/main/Machine_Learning/Resources/MLP/MLP_TEST.png)

Random Forest, had high accuracy, however, due to its nature was not good at predictions, it would predict the future value as current value, which is not what we aimed to achieve with this project. 

![RF](https://raw.githubusercontent.com/alecngai/Data_Capstone_2021_Group_3/main/Machine_Learning/Resources/MLP/RF_TEST.png)