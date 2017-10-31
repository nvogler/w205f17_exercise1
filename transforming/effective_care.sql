DROP TABLE effective_care_f; 		-- _f indicating transFormed table
CREATE TABLE effective_care_f

AS SELECT				-- Only selecting columns to be used in analysis as shown in the ERD
	
	CAST(ProviderID AS INT),
	MeasureID,
	CAST(Score AS INT),
	
FROM effective_care			-- Pulling from raw data (with schema applied)

WHERE
	MeasureID <> 'EDV'	 	-- Distinct measureID not associated with a score, ignoring
AND
	Score <> 'Not Available' 	-- Ignoring records with null values as they can't be used 
AND 
	ProviderID IS NOT NULL;

