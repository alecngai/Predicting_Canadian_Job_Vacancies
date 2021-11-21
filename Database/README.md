### Database

To create “Predicting Labour Vacancies in Various Canadian Sectors” the team imported the raw data into SQL by using PostgreSQL and created the database engine that allows Pandas to communicate with SQL. 

The team decided to use the next integration of provisional database as below:

![image](https://user-images.githubusercontent.com/68247343/140799815-55737326-ba8f-4800-8db7-209ab3c1fe49.png)

Also the Entity Relationship Diagram (ERD) with relationships was created as below.
 
To create “Predicting Labour Vacancies in Various Canadian Sectors” the team leveraged PostGresSQL to host and interact with the database. The raw data was cleansed through Pandas Dataframes and exported to CSV to import into the final table schema. AWS RDS instance was generated to host the DB and provide a core data source which could be used simultaneously by all team members. There was a database engine created to allow each team member to connect to the database directly within their own local notebooks.

**_Database ERD_**

![ERD_DB](https://github.com/alecngai/Data_Capstone_2021_Group_3/blob/3fcd4bc5225c7b78316b5c9a61538b421cede14d/Database/DB_ERD.png)

**_Joining Database Tables_**
Within the PostGresSQL UI, the team has created a join to pull the average wage of each NOC code. This is inclusive of all NOC and sub NOC codes and is also inclusive of both Part time and Full time Job Types to produce a single average wage for this NOC code.

![SQLJoin](https://github.com/alecngai/Data_Capstone_2021_Group_3/blob/5c206ac3efaf6f18c82b822d05a34677a4e2f38d/Database/SQL_JOIN.png)

