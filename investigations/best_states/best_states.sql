SELECT state, avg(AMS) - avg(VAR) AS tot, avg(AMS) AS avrg,  avg(VAR) as avar, sum(AMS) AS sumavg
FROM
	(
		-- Calculate standard deviation and average score for each providerid, measureid tuple
		SELECT state, measureid, stddev_samp(score) AS VAR, avg(score) AS AMS
		FROM
			(
			-- Appending state column to providerid|measureid|score
			SELECT state, providerid
			FROM hospitals_f
			) AS states
			INNER JOIN
			(
				-- UNION ALL is used to concatenate data on all the procedures during an initial visit, readmission, or death.
				SELECT providerid, measureid, score
				FROM readmissions_f
				UNION ALL
				SELECT providerid, measureid, score
				FROM effective_care_f
				WHERE providerid IS NOT NULL
				AND score IS NOT NULL
			) AS avgs on states.providerid = avgs.providerid
		-- Grouping by state, measureid tuple before being passed up for final calculations
		GROUP BY states.state, avgs.measureid
	) subResult
GROUP BY state
ORDER BY tot DESC LIMIT 10;