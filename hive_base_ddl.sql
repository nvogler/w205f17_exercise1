DROP TABLE Hospitals;
CREATE EXTERNAL TABLE Hospitals
(
	ProviderID INT,
	HospitalName STRING,
	Address STRING,
	City STRING,
	State STRING,
	ZipCode INT,
	CountyName STRING,
	PhoneNumber STRING,
	HospitalType STRING,
	HospitalOwnership STRING,
	EmergencyServices BOOLEAN
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
	WITH SERDEPROPERTIES (
		"seperatorChar" = ",",
		"quoteChar" = '"',
		"escapeChar" = '\\'
		)
	STORED AS TEXTFILE
	LOCATION '/user/w205/hospital_compare/';

DROP TABLE SurveysResponses;
CREATE EXTERNAL TABLE SurveyResponses
(
	ProviderID INT,
	HospitalName STRING,
	Address STRING,
	City STRING,
	State STRING,
	ZipCode INT,
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
	QuestionY STRING,
	baseScore INT,
	ConsistencyScore INT
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
	WITH SERDEPROPERTIES (
		"seperatorChar" = ",",
		"quoteChar" = '"',
		"escapeChar" = '\\'
		)
	STORED AS TEXTFILE
	LOCATION '/user/w205/hospital_compare/';

DROP TABLE Readmissions;
CREATE EXTERNAL TABLE Readmissions
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
	MeasureID INT,
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
	LOCATION '/user/w205/hospital_compare/';

DROP TABLE EffectiveCare;
CREATE EXTERNAL TABLE EffectiveCare
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
	LOCATION '/user/w205/hospital_compare/';
	
DROP TABLE Measures;
CREATE EXTERNAL TABLE Measures
(
	MeasureName STRING,
	MeasureID INT,
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
	LOCATION '/user/w205/hospital_compare/';
