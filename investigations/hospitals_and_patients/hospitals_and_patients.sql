-- Desired output: Correlation coefficient between survey_responses and high quality care
SELECT corr(results.overall_score, sr.AvgBS)
FROM 
	(
		-- Average base + consistency scores for each provider
		SELECT  a.providerid, avg(BaseScore + consistencyscore) as AvgBS
		FROM hospitals_f AS a INNER JOIN survey_responses_formatted AS b ON a.providerid = b.providerid
		GROUP BY a.providerid
	) as sr -- survey_responses
	INNER JOIN
	(
		-- Calculate average standard deviation and the average of the average scores for each providerid
		SELECT ProviderID, avg(AMS) - stddev_samp(AMS) AS overall_score
		FROM
			(
				-- Calculate standard deviation and average score for each providerid, measureid tuple
				SELECT providerid, measureid, avg(score) AS AMS
				FROM
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
					-- Filter providers with less than 10 distinct procedures carried out
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
				GROUP BY avgs.providerid, avgs.measureid
			) subResult
		GROUP BY ProviderID											-- standard deviation per measure, per hospital
	) AS results
	ON sr.providerid = results.providerid