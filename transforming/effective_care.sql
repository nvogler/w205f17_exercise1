CREATE TABLE effective_care_formatted

AS SELECT

	ProviderID INT,
	Condition STRING,
	MeasureID INT,
	Score STRING,
	Sample STRING,
	Footnote STRING,
	
FROM readmissions

