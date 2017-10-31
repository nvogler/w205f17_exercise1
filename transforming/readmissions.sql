DROP TABLE readmissions_f;
CREATE TABLE readmissions_f

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