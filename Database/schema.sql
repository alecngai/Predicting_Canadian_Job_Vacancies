CREATE TABLE NOC(
	ID int not null,
	noc_code VARCHAR NOT NULL,
	noc_desc VARCHAR NOT NULL,
	PRIMARY KEY (noc_code)
);

CREATE TABLE AverageWage( 
	Wage_ID INT NOT NULL,
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
	Year varchar not null,
	Quarter varchar not null,
	Location VARCHAR NOT NULL,
	noc_code VARCHAR NOT NULL,
	Job_Details VARCHAR NOT NULL,
	Total_Vacancies float NOT NULL,
	PRIMARY KEY (Vacancy_ID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE JobDetails_Percent(
	Job_ID INT NOT NULL,
	Year varchar not null,
	Quarter varchar not null,
	Location VARCHAR NOT NULL,
	noc_code VARCHAR NOT NULL,
	Job_Details VARCHAR NOT NULL,
	Total_Percent float NOT NULL,
	PRIMARY KEY (Job_ID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);