DROP TABLE effective_care_formatted;
CREATE TABLE effective_care_formatted

AS SELECT

	CAST(ProviderID AS INT),
	Condition,
	MeasureID,
	CAST(Score AS INT),
	Sample,
	Footnote
	
FROM effective_care

WHERE
	
	MeasureID <> 'EDV'
OR
	Score <> 'Not Available';

