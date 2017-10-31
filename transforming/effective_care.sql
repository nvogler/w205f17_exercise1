DROP TABLE effective_care_f;
CREATE TABLE effective_care_f

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

