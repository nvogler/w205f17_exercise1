DROP TABLE Measures
CREATE EXTERNAL TABLE Measures (
	MeasureName,
	MeasureID,
	MeasureStartQuarter,
	MeasureStartDate,
	MeasureEndQuarter,
	MeasureEndDate
	)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
	WITH SERDEPROPERTIES (
		"seperatorChar" = ",",
		"quoteChar" = '"',
		"escapeChar" = '\\'
		)
		STORED AS Measures.csv
		LOCATION '/user/w205/hospital_compare';