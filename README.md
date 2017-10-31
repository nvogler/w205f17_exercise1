# Data Storage and Retrieval
## MIDS w205 Fall 2017 Exercise 1

Summary
This exercise replicates the task of conducting a study on the quality of care for Medicare patients. Work is broken down into the following four segments with the end goal of strengthening the connection between the analysis, storage, modeling, and processing of data. 

- Loading data into a Hadoop File System (HDFS) Data Lake
- Creating an Entity-Relationship (ER) diagram and schema for the data being analyzed
- Transforming raw data form the data lake to fit the data model
- Analyzing dervied data to answer questions about quality of care

Part 1
Five key raw data files were extracted from a larger dataset and formatted for input to HDFS. A parent directory was created in HDFS along with a folder for each file to prevent schema application errors. 

Commands loaded into load_data_lake.sh

Part 2
An entity-relationship diagram was created to model the desired schema. This identifies primary keys in each table (though not expressed in hive) and outlines the transformations needed to shape the data as required to perform the analysis. 

File name ERD.png

Part 3a
Using the structure from the ERD, a Data Definition Lanaguage (DDL) SQL statement for each of the previous base files was created to formally define the data being extracted before it's transformed in the next step.

DDL SQL statement loaded into hive_base_ddl.sql

Part 3b




High-quality care is determined by the average of the the average score per measure, minus the associated variance. Average and variance values per measure, per hospital are calculated separately, then  variance is subtracted from the average, and the average of this value across all measures pertaining to a specific hospital is taken. This approach accounts for all individual procedures carried out by each hospital and weights each score equally. By subtracting the variance from the average scores, inconsistency among measures is highlighted and taken into account.

Given this approach, the ten best hospital examples of high-quality care are:

To determine the best states as models of high-quality care, the same method is used as was used in determining model hospitals. To reiterate, high-quality care is determined by the average of the the average score per measure, minus the associated variance. Average and variance values per measure, per state are calculated separately, then  variance is subtracted from the average, and the average of this value across all measures pertaining to a specific state is taken. This approach accounts for all individual procedures carried out by each hospital and weights each score equally. By subtracting the variance from the average scores, inconsistency among measures is highlighted and taken into account.

Given this approach, the ten best state examples of high-quality care are:

Procedures with the greatest variability between hospitals were found by grouping all score according to both their provider id and their measure id. Then, the variance within each of these subgroups is calculated and ordered before the final result is resulted. This approach directly addresses variability in measures between different hospitals by grouping the scores in that shape before performing calculations.

Given this approach, the ten measures with the most variability between hospitals are:

Results from the first and third questions, and the approaches used to calculate them, were used to find their correlation with survey responses. Between high-quality care and survey responses there is only a XYZ correlation indicating a weak, inverse relationship. Between measure variability and survey responses there is only a XYZ correlation indicating a weak, inverse relationship.
