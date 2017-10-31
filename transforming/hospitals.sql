DROP TABLE hospitals_f;			-- _f indicating transFormed table
CREATE TABLE hospitals_f

AS SELECT				-- Only selecting columns to be used in analysis as shown in the ERD

	CAST(ProviderID AS INT),
	State
	
FROM hospitals				-- Pulling from raw data (with schema applied)

WHERE ProviderID IS NOT NULL;		-- Ignoring records with null values as they can't be used 
