DROP TABLE survey_responses_formatted;
CREATE TABLE survey_responses_formatted AS

SELECT
	ProviderID,
	baseScore,
	ConsistencyScore
FROM surveys_responses;

