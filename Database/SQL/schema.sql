CREATE TABLE NOC(
	noc_code varchar NOT NULL,
	noc_desc VARCHAR NOT NULL,
	PRIMARY KEY (noc_code)
);

CREATE TABLE composedkey ( 
	composition VARCHAR NOT NULL,
	composedID VARCHAR NOT NULL,
	REF_DATE date not null,
	Year VARCHAR NOT NULL,
	Quarter VARCHAR NOT NULL,
	GEO VARCHAR NOT NULL,
	noc_code VARCHAR not null,
	Job_Details VARCHAR NOT NULL,
	PRIMARY KEY (composedID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE AverageWage( 
	composedID VARCHAR NOT NULL,
	REF_DATE date not null,
	Year int not null,
	Quarter int not null,
	Location VARCHAR NOT NULL,
	noc_code varchar not null,
	JOB_CHAR VARCHAR NOT NULL,
	Avg_Wage float,
	PRIMARY KEY (composedID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE Vacancies ( 
	composedID VARCHAR NOT NULL,
	REF_DATE date not null,
	Year VARCHAR NOT NULL,
	Quarter VARCHAR NOT NULL,
	Location VARCHAR NOT NULL,
	noc_code varchar NOT NULL,
	Job_Details VARCHAR NOT NULL,
	Total_Vacancies float,
	PRIMARY KEY (composedID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE MachineLearning ( 
	composedID VARCHAR not null,
	REF_DATE date not null,
	GEO VARCHAR NOT NULL,
	noc_code VARCHAR not null,
	noc_desc VARCHAR NOT NULL,
	JOB_CHAR VARCHAR NOT NULL,
	Total_Vacancies float NOT NULL,
	Predicted_Vacancies float,
	PRIMARY KEY (composedID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE tsoutputcanada ( 
	composedID VARCHAR not null,
	REF_DATE date not null,
	GEO VARCHAR NOT NULL,
	noc_code VARCHAR not null,
	noc_desc VARCHAR NOT NULL,
	JOB_CHAR VARCHAR NOT NULL,
	Total_Vacancies float,
	Predicted_Vacancies float,
	PRIMARY KEY (composedID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

CREATE TABLE tsoutputprovinces (
	composedID VARCHAR NOT NULL,
	REF_DATE date not null,
	GEO VARCHAR NOT NULL,
	Predicted_Vacancies float,
	noc_code VARCHAR not null,
	noc_desc VARCHAR NOT NULL,
	JOB_CHAR VARCHAR NOT NULL,
	Total_Vacancies float,
	PRIMARY KEY (composedID),
	FOREIGN KEY (noc_code) REFERENCES NOC (noc_code)
);

create table mlpoutputcod(
	index int not null,
	REF_DATE varchar not null,
	GEO varchar not null,
	NOC varchar not null,
	JOB_CHAR varchar not null,
	NocCode varchar not null,
	PREDICTED_VACANCIES float not null,
	PRIMARY KEY (index),
	FOREIGN KEY (NocCode) REFERENCES NOC (noc_code)
);
