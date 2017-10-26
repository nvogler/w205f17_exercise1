DROP TABLE readmissions_formatted;
CREATE TABLE readmissions_formatted

AS SELECT

	CAST(ProviderID AS INT),
	MeasureID,
	Denominator,
	CAST(Score AS DOUBLE),
	CAST(LowerEstimate AS DOUBLE),
	CAST(HigherEstimate AS DOUBLE),
	Footnote

FROM readmissions

WHERE
	Score <> 'Not Available'
AND 
	HigherEstimate <> 'Not Available'
AND
	LowerEstimate <> 'Not Available';