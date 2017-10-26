DROP TABLE survey_responses_formatted;
CREATE TABLE survey_responses_formatted AS

SELECT
	ProviderID AS INT,
	baseScore AS INT,
	ConsistencyScore AS INT
FROM surveys_responses

WHERE
	baseScore <> 'Not Available'
AND
	ConsistencyScore <> 'Not Available';

