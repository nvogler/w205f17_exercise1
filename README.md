# Data Storage and Retrieval
## MIDS w205 Fall 2017 Exercise 1
## Requirements
All the required software is installed on the Amazon Web Services Community AMI below.  
AMI ID: AMIID | AMI Name: AMIName

### Summary
This exercise replicates the task of conducting a study on the quality of care for Medicare patients. Work is broken down into the following four segments with the end goal of strengthening the connection between the analysis, storage, modeling, and processing of data. 

- Loading data into a Hadoop File System (HDFS) Data Lake
- Creating an Entity-Relationship (ER) diagram and schema for the data being analyzed
- Transforming raw data form the data lake to fit the data model
- Analyzing dervied data to answer questions about quality of care

### Part 1
Five key raw data files were extracted from a larger dataset and formatted for input to HDFS. A parent directory was created in HDFS along with a folder for each file to prevent schema application errors. 

- Commands loaded into load_data_lake.sh

### Part 2
An entity-relationship diagram was created to model the desired schema. This identifies primary keys in each table (though not expressed in hive) and outlines the transformations needed to shape the data as required to perform the analysis. 

- File name ERD.png

### Part 3a
Using the structure from the ERD, a Data Definition Lanaguage (DDL) SQL statement for each of the previous base files was created to formally define the data being extracted before it's transformed in the next step.

- DDL SQL statement loaded into hive_base_ddl.sql

### Part 3b
With the data defined, each table was transformed to fit the schema displayed in the ERD.

- Files located in transformations/*

### Part 4
After the data was shaped and processed an analysis was carried out to best answer the questions initially asked. Although this is the final part, steps 2-4 were cycled multiple times in refining the requirements of the data and therefore adjusted the ERD along with the steps that followed.

- Files and explanations located in investigations/* 
