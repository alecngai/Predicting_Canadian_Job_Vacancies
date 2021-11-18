CREATE TABLE NOC(
	ID int not null,
	noc_code VARCHAR NOT NULL,
	noc_desc VARCHAR NOT NULL,
	PRIMARY KEY (noc_code)
);

CREATE TABLE AverageWage( 
	Wage_ID INT NOT NULL,
	REF_DATE varchar not null,
	Year varchar not null,
	Quarter varchar not null,
	Location VARCHAR NOT NULL,
	noc_code VARCHAR not null,
	Job_Details VARCHAR NOT NULL,
	Avg_Wage float NOT NULL,
	PRIMARY KEY (Wage_ID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE Vacancies ( 
	Vacancy_ID INT NOT NULL,
	REF_DATE varchar not null,
	Year varchar not null,
	Quarter varchar not null,
	Location VARCHAR NOT NULL,
	noc_code VARCHAR NOT NULL,
	Job_Details VARCHAR NOT NULL,
	Total_Vacancies float NOT NULL,
	PRIMARY KEY (Vacancy_ID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE TimeSeries ( 
	ID INT NOT NULL,
	REF_DATE varchar not null,
	Year varchar not null,
	Quarter varchar not null,
	Location VARCHAR NOT NULL,
	Job_Details VARCHAR NOT NULL,
	Statistics varchar not null,
	noc_code VARCHAR,
	noc_desc VARCHAR NOT NULL,
	Total_Vacancies VARCHAR NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE Quarterly_Vacancies ( 
	REF_DATE varchar not null,
	Total_Vacancies VARCHAR NOT NULL,
	PRIMARY KEY (REF_DATE)
);

CREATE TABLE LINEAR_ML ( 
	ID INT NOT NULL,
	REF_DATE varchar not null,
	GEO varchar not null,
	DGUID varchar not null,
	NOC VARCHAR NOT NULL,
	Characteristics VARCHAR NOT NULL,
	Stats VARCHAR NOT NULL,
	UOM VARCHAR NOT NULL,
	UOM_ID INT NOT NULL,
	SCALAR_FACTOR VARCHAR NOT NULL,
	SCALAR_ID VARCHAR NOT NULL,
	VECTOR VARCHAR NOT NULL,
	COORDINATE VARCHAR NOT NULL,
	VALUE FLOAT NOT NULL,
	STATUS VARCHAR NOT NULL,
	SYMBOL VARCHAR,
	TERMINATED VARCHAR,
	DECIMALS VARCHAR,
	PRIMARY KEY (ID)
);