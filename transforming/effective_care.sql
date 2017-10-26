DROP TABLE effective_care_formatted;
CREATE TABLE effective_care_formatted

AS SELECT

	ProviderID,
	Condition,
	MeasureID,
	Score,
	Sample,
	Footnote
	
WHERE
	
	MeasureID <> 'EDV'
AND
	Score <> 'Not Available'
	
FROM effective_care;

