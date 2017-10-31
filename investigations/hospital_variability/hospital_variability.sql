SELECT measureid, stddev_samp(AMS) AS var
FROM
	(
		-- Calculate average score for each providerid, measureid tuple
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
			) unionResult
		GROUP BY providerid, measureid				-- Average score per measure, per hospital
	) subResult
GROUP BY measureid
ORDER BY var DESC LIMIT 10; 						-- standard deviation per measure 