DROP TABLE measure_results;
CREATE TABLE measure_results

AS 

SELECT
	CAST(ProviderID AS INT),
	MeasureID,
	CAST(Score AS INT)
FROM effective_care_f

UNION ALL

SELECT
	CAST(ProviderID AS INT),
	MeasureID,
	CAST(Score AS INT)
FROM readmissions_f

WHERE
	MeasureID <> 'EDV'
AND
	Score <> 'Not Available';
