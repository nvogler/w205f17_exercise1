DROP TABLE effective_care_formatted;
CREATE TABLE effective_care_formatted

AS SELECT

	ProviderID,
	Condition,
	MeasureID,
	Score,
	Sample,
	Footnote
	
FROM effective_care;

