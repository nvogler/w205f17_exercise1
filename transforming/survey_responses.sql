DROP TABLE survey_responses_f;
CREATE TABLE survey_responses_f AS

SELECT
	CAST(ProviderID AS INT),
	CAST(baseScore AS INT),
	CAST(ConsistencyScore AS INT)
FROM surveys_responses

WHERE
	baseScore <> 'Not Available'
AND
	ConsistencyScore <> 'Not Available'
AND 
	ProviderID IS NOT NULL;
