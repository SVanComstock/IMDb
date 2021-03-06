# Overview
The goal of this project is to get a sense for how you would go about building a data warehouse.

## Scenario
You have a team of data analyts interested in helping build the next big movie hit by analyzing IMDB data. They are interested to answer questions like below (you do **NOT** need to answer these questions in your deliverables):
- Which movie had the highest rating per country and year?
- What are the average ages of the actors for each movie?

## Requirements
1. Design a data model consisting of FACT and DIMENSION tables that can be used to answer the above questions, as well as offer flexibility for further exploration.
2. Implement a program/pipeline that transforms the input data into a form usable by the data model.

## Deliverables
1. Data model (visual diagram)
2. Implementation (whatever tools and tech stack you want to actually move the data from files to warehouse)
3. Supporting documentation

## Resources and Notes
- Download the IMDB data as a zip file from this repo 
- This [Kaggle data set](https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset) is the original source
- Feel free to email questions to your recruiting contact, however we do not want you to wait on replies in order to move forward. For most things, simply document your assumptions and move on.
- Use Git/GitHub if possible:
   - **Clone** the repo to your own
   - Store your files and solution in your cloned repo
   - Provide a link to us when it's complete (no need to submit a Pull Request as we'd like to protect your confidentiality during the hiring process).

# Sasha's Approach
## Tools
1. MySQL Server: Created local instance
2. MySQL Databases: Built databases, schemas, and tables for IMDb data
3. Table Data Wizard (for Import/Export of .csv data files)
4. Atom Editor
   
## Process
1. Imported raw data from .csv files, transformed data in Table Data Wizard
2. Formatted raw data using stored procedures 
3. Imported the transformed data into the IMDb production database using stored procedures

## Files (Beginning stages of building out data warehouse) 
1. IMDb_raw database structure
2. IMDb production database structure
3. Table structures
4. Stored procedures

## ER Diagram   
   ![ER Diagram](https://github.com/SVanComstock/IMDb/blob/master/DBMS_ER_diagram.png)

## MySQL Server Connections   
   ![MySQL Server Connections](https://github.com/SVanComstock/IMDb/blob/master/MySQL_Server_Connections.png)

## JDBC Settings   
   ![JDBC Settings](https://github.com/SVanComstock/IMDb/blob/master/jdbc_connection_settings.png)

## Import Settings Example  
   ![Import Settings Example](https://github.com/SVanComstock/IMDb/blob/master/Import_Settings.png)
   
## dim_Movies_Details Sample  
   ![dim_Movies_Details Sample](https://github.com/SVanComstock/IMDb/blob/master/dim_Movie_Details_sample.png)   
   
## Server Status Dashboard   
   ![Server Status Dashboard](https://github.com/SVanComstock/IMDb/blob/master/Server_Status_Dashboard.png)  
     
   
