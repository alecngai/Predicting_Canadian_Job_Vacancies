# Time Series Machine Learning Model

## Description of preliminary data preprocessing
The folowing steps are performed as the nescessary preprocessing for the model:
1. converting the REF_DATE column into a datetime object
2. Setting the REF_DATE column as the dataframe index

##  Description of preliminary feature engineering and preliminary feature selection, including their decision-making process
* No feature engineering is needed to implement the time series model
* Time series model takes two inputs; a time stamp and a continuos variable.
* stationary, autoregression and trend decomposition tests were performed to undertand the chracteristics of the data
* Identification of model parameters required a grid search to find the combination of prameters that gives the best accuracy metrics including:
 * MAPE
 * ME
 * MAE
 * MPE
 * rmse
 * acf1
 * corr
 * minmax

## Description of how data was split into training and testing sets

The data was split 85% training and 15% testing

##  Explanation of model choice, including limitations and benefits
SARIMA model is chosen to predict the number of vancancies on Canada and on province levels as the data presents both components of trend and seasonality.

Benifits:
* best used for time series with seasonality as it  allows for long-term trend and seasonal effects.

Limitations:
* high RMSE for provinces with high variation in number of vancacies
* the model is limited to predicted number of vacancies in quarter with unexpected high number of vacancies. for exmaple: Q2 2021 (post-COVID19 reopening)