CREATE TABLE NOC(
	noc_code varchar NOT NULL,
	noc_desc VARCHAR NOT NULL,
	PRIMARY KEY (noc_code)
);

CREATE TABLE AverageWage( 
	Wage_ID INT NOT NULL,
	REF_DATE date not null,
	Year int not null,
	Quarter int not null,
	Location VARCHAR NOT NULL,
	noc_code varchar not null,
	JOB_CHAR VARCHAR NOT NULL,
	Avg_Wage float NOT NULL,
	PRIMARY KEY (Wage_ID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE Vacancies ( 
	Vacancy_ID INT NOT NULL,
	REF_DATE date not null,
	Year int not null,
	Quarter int not null,
	Location VARCHAR NOT NULL,
	noc_code varchar NOT NULL,
	Job_Details VARCHAR NOT NULL,
	Total_Vacancies float NOT NULL,
	PRIMARY KEY (Vacancy_ID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE MachineLearning ( 
	ID INT NOT NULL,
	REF_DATE date not null,
	GEO VARCHAR NOT NULL,
	noc_code VARCHAR not null,
	noc_desc VARCHAR NOT NULL,
	JOB_CHAR VARCHAR NOT NULL,
	Total_Vacancies float NOT NULL,
	Predicted_Vacancies float,
	PRIMARY KEY (ID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE Canada_Vacancies ( 
	REF_DATE date not null,
	Total_Vacancies float NOT NULL,
	Predicted_Vacancies int,
	PRIMARY KEY (REF_DATE)
);