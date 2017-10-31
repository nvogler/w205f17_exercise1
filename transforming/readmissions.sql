DROP TABLE readmissions_f;		-- _f indicating transFormed table
CREATE TABLE readmissions_f

AS SELECT				-- Only selecting columns to be used in analysis as shown in the ERD

	CAST(ProviderID AS INT),
	MeasureID,
	CAST(Score AS DOUBLE)

FROM readmissions			-- Pulling from raw data (with schema applied)

WHERE
	Score <> 'Not Available'	-- Ignoring records with null values as they can't be used 
AND 
	ProviderID IS NOT NULL;
