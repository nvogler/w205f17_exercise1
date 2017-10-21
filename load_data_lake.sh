tail -n +2 "Hospital General Information.csv"  > hospitals.csv
tail -n +2 "Timely and Effective Care - Hospitals.csv" > effective_care.csv
tail -n +2 "Readmissions and Deaths - Hospitals.csv" > readmissions.csv
tail -n +2 "Measure Dates.csv" > Measures.csv
tail -n +2 hvbp_hcahps_05_28_2015.csv > surveys_responses.csv

hdfs dfs -put /user/w205/hospital_compare/hospitals.csv
hdfs dfs -put /user/w205/hospital_compare/effective_care.csv
hdfs dfs -put /user/w205/hospital_compare/readmissions.csv
hdfs dfs -put /user/w205/hospital_compare/Measures.csv
hdfs dfs -put /user/w205/hospital_compare/surveys_responses.csv

