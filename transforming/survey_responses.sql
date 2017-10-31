DROP TABLE survey_responses_f;			-- _f indicating transFormed table
CREATE TABLE survey_responses_f 

AS SELECT					-- Only selecting columns to be used in analysis as shown in the ERD

	CAST(ProviderID AS INT),
	CAST(baseScore AS INT),
	CAST(ConsistencyScore AS INT)
	
FROM surveys_responses				-- Pulling from raw data (with schema applied)

WHERE
	baseScore <> 'Not Available'		-- Ignoring records with null values as they can't be used 
AND
	ConsistencyScore <> 'Not Available'
AND 
	ProviderID IS NOT NULL;
