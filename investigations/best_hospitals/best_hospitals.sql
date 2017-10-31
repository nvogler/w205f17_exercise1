-- Desired output: ProviderID, average of (average score - standard deviation), aggregate, average, and standard deviation for each measure
SELECT ProviderID, avg(AMS) - stddev_samp(AMS) AS overall_score, stddev_samp(AMS) AS stddev_avg, avg(AMS) AS avgavg, sum(AMS) AS sumavg
FROM
	(
		-- Calculate average score for each providerid, measureid tuple
		SELECT providerid, measureid, avg(score) AS AMS
		FROM
			-- Joining all procedures and their scores for a given providerid and filtering providerids associated with less than 10 procedures
			(	
				-- UNION ALL is used to concatenate data on all the procedures during an initial visit, readmission, or death.
				SELECT providerid, measureid, score
				FROM readmissions_f
				UNION ALL
				SELECT providerid, measureid, score
				FROM effective_care_f
				WHERE providerid IS NOT NULL
				AND score IS NOT NULL
			) AS avgs
			INNER JOIN
			(
			-- Count distinct procedures per providerid 
			SELECT providerid, COUNT(DISTINCT(measureid)) AS variety
			FROM 
				(
					-- UNION ALL is used to concatenate data on all the procedures during an initial visit, readmission, or death.
					SELECT providerid, measureid, score
					FROM readmissions_f
					UNION ALL
					SELECT providerid, measureid, score
					FROM effective_care_f
				) unionResult
			GROUP BY ProviderID
			) as cnt
			ON cnt.providerid = avgs.providerid 
		WHERE cnt.variety > 10
		-- Grouping by providerid, measureid tuple before being passed up for final calculations
		GROUP BY avgs.providerid, avgs.measureid
	) subResult
GROUP BY ProviderID
ORDER BY overall_score DESC LIMIT 10;