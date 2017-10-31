DROP TABLE hospitals;							-- Applying schema for loading from the Data Lake
CREATE EXTERNAL TABLE hospitals
(
	ProviderID INT,							-- Including all columns
	HospitalName STRING,
	Address STRING,
	City STRING,
	State STRING,
	ZipCode INT,
	CountyName STRING,
	PhoneNumber STRING,
	HospitalType STRING,
	HospitalOwnership STRING,
	EmergencyServices STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
	WITH SERDEPROPERTIES (
		"seperatorChar" = ",",
		"quoteChar" = '"',
		"escapeChar" = '\\'
		)
	STORED AS TEXTFILE
	LOCATION '/user/w205/hospital_compare/hospitals/';		-- Path to hospital.csv's folder

DROP TABLE surveys_responses;
CREATE EXTERNAL TABLE surveys_responses
(
	ProviderID INT,
	HospitalName STRING,
	Address STRING,
	City STRING,
	State STRING,
	ZipCode STRING,
	CountyName STRING,
	QuestionA STRING,
	QuestionB STRING,
	QuestionC STRING,
	QuestionD STRING,
	QuestionE STRING,
	QuestionF STRING,
	QuestionG STRING,
	QuestionH STRING,
	QuestionI STRING,
	QuestionJ STRING,
	QuestionK STRING,
	QuestionL STRING,
	QuestionM STRING,
	QuestionN STRING,
	QuestionO STRING,
	QuestionP STRING,
	QuestionQ STRING,
	QuestionR STRING,
	QuestionS STRING,
	QuestionT STRING,
	QuestionU STRING,
	QuestionV STRING,
	QuestionW STRING,
	QuestionX STRING,
	baseScore STRING,
	ConsistencyScore STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
	WITH SERDEPROPERTIES (
		"seperatorChar" = ",",
		"quoteChar" = '"',
		"escapeChar" = '\\'
		)
	STORED AS TEXTFILE
	LOCATION '/user/w205/hospital_compare/surveys_responses/';

DROP TABLE readmissions;
CREATE EXTERNAL TABLE readmissions
(
	ProviderID INT,
	HospitalName STRING,
	Address STRING,
	City STRING,
	State STRING,
	ZipCode INT,
	CountyName STRING,
	PhoneNumber STRING,
	MeasureName STRING,
	MeasureID STRING,
	Denominator STRING,
	Score STRING,
	LowerEstimate STRING,
	HigherEstimate STRING,
	Footnote STRING,
	MeasureStartDate STRING,
	MeasureEndDate STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
	WITH SERDEPROPERTIES (
		"seperatorChar" = ",",
		"quoteChar" = '"',
		"escapeChar" = '\\'
		)
	STORED AS TEXTFILE
	LOCATION '/user/w205/hospital_compare/readmissions/';

DROP TABLE effective_care;
CREATE EXTERNAL TABLE effective_care
(
	ProviderID INT,
	HospitalName STRING,
	Address STRING,
	City STRING,
	State STRING,
	ZipCode INT,
	CountyName STRING,
	Condition STRING,
	MeasureID INT,
	MeasureName STRING,
	Score STRING,
	Sample STRING,
	Footnote STRING,
	MeasureStartDate STRING,
	MeasureEndDate STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
	WITH SERDEPROPERTIES (
		"seperatorChar" = ",",
		"quoteChar" = '"',
		"escapeChar" = '\\'
		)
	STORED AS TEXTFILE
	LOCATION '/user/w205/hospital_compare/effective_care/';
	
DROP TABLE Measures;
CREATE EXTERNAL TABLE Measures
(
	MeasureName STRING,
	MeasureID STRING,
	MeasureStartQuarter STRING,
	MeasureStartDate STRING,
	MeasureEndQuarter STRING,
	MeasureEndDate STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
	WITH SERDEPROPERTIES (
		"seperatorChar" = ",",
		"quoteChar" = '"',
		"escapeChar" = '\\'
		)
	STORED AS TEXTFILE
	LOCATION '/user/w205/hospital_compare/measures/';
