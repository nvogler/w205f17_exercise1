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
	LOCATION '/user/w205/hospital_compare/Measure.csv';
