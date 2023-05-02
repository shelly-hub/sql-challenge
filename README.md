# sql-challenge

## Project Aim
To understand SQL database by importing CSV files data to perform data modelling, data engineering and data analysis. 

## Project Description
This project mainly utilises pgAdmin4 to create tables to hold data import from CSV files into SQL database, and making analyses using the data provided. 
In corporate with Quick DBD to illustrate the relationships of the data objects by identifying primary and foreign keys in each tables. Jupyter notebook is also used to illustrate how these csv data can be imported into database by using Python command alternative to specific SQL. 

### Advantages of SQL
 - Less complex, easy to use
 - Each database can hold multiples files, and each file can hold multiple tables. Great use for to store large data.
 - Can specify different tyes of keys to make connections among tables. 
 -Query perform quick and efficient for large data

### Disadvantages of SQL
 - Unable to perform more complex queries
 - Data retrieval is not easy, need to constantly delete tables and re-run the code

## Project Methods
### Data Modelling:
Need to go to following server: https://app.quickdatabasediagrams.com/#/d/iu7dum
 - Write connections of each tables by specifiying their Primary Key and Foreign Key.
 - Specify their relations types as following:
 - 
                  - -     - one TO one
                 -<    - one TO many
                 >-    - many TO one
 - Final results import as png Image
 
 
 ### Data Engineering:
 Need to download pgadmin4 and spcify host and port connection to finalise the set-up
 
      1. Create a database named: employee_db
      2. Open Query tool, and Start to create 6 tables
      3. Open each CSV files to get each headers name to be input into tables, headers need to be an exact same format as csv files
      4. Each tables, need to specify data types, primary or foreign keys, and other constraints
      5. Other constraints include: Specifying "NOT NULL' conditins on necessary columns, defines value length for columns
      6. After creating tables, then start to import each files one by one by specifiying header on
      7. For csv files that contain date(Employees table), format needs to be changed to SQL format before importing
      8. Tables are in order of Primary keys then Foriegn keys. 
  
 ### Data Analysis:
 2 different ways were used for analysis:
 a) Method 1 using pgAdmin 4, under "employees" (SQL source file)
 b) Method 2 using Jupyter Analysis, under "bonus_employees" (Jupyter Source file)
 
 #### Analysis for ERD diagram:
 This is under "QuickDBD-Employee Schema" png file.
 
 Assumptions 
 

