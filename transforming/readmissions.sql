CREATE TABLE readmissions_formatted AS

SELECT
	ProviderID,
	MeasureID,
	Denominator,
	Score,
	LowerEstimate,
	HigherEstimate,
	Footnote,
FROM readmissions

