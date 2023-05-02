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

 Assumptions made:
  - Each employee only belong to one department. The department "Sales & Marketing" is considered as one department. 

 Relationships made: 

     - Each department can have more than one managers, and many employees, but each employee/manager only belong to one department, hence this is one to many relationships. 
     - Each employees has their own individual salary value and vice versa, hence this is one to one relationship. 
     - Each employees has their own individual work title, but each work title can have many employees, so this one to many relationships. 
     - There can be more than one employees becoming manager hence it is one to many relationships. 
 
 ## References
 
   - Constraints in SQL Server: SQL NOT NULL, UNIQUE and SQL PRIMARY KEY.(25/10/2017). SQL Shack. Retrived on 30 April 2023, from:<https://www.sqlshack.com/commonly-used-sql-server-constraints-not-null-unique-primary-key/>
   - Filter By Date Parts or Date Field.(30/12/2014).Developers, Retrived on 01 May 2023, from: <https://developer.salesforce.com/docs/atlas.en-us.bi_dev_guide_sql.meta/bi_dev_guide_sql/bi_sql_date_filter.htm>
   - How to Find Duplicate Values in SQL. (2023). LearnSQL.com. Retrived on 01 May 2023, from:<https://learnsql.com/blog/how-to-find-duplicate-values-in-sql/>
   - How to set Postgresql database to see date as "MDY" permanently.(21/01/2016).Stack Exchange. Retrived on 01 May 2023, from: <https://dba.stackexchange.com/questions/19679/how-to-set-postgresql-database-to-see-date-as-mdy-permanently>
    https://stackoverflow.com/questions/31394998/using-sqlalchemy-to-load-csv-file-into-a-database
   - Python Pandas merge only certain columns.(2021).Stack Overflow.Retrived on 01 May 2023, from: <https://stackoverflow.com/questions/17978133/python-pandas-merge-only-certain-columns>
   - Pandas Filter DataFrame Rows on Dates. (31/1/2023).Sparkby{Examples}.Retrived on 02 May 2023, from:<https://sparkbyexamples.com/pandas/pandas-filter-dataframe-rows-on-dates/>
   - Filter pandas row where 1st letter in a column is/is-not a certain value.(2/10/2018).Stack Overflow.Retrived on 01 May 2023, from: <https://stackoverflow.com/questions/52587870/filter-pandas-row-where-1st-letter-in-a-column-is-is-not-a-certain-value.>
   - How to Count Duplicates in Pandas DataFrame.(10/09/2021).Data to Fish. Retrived on 01 May 2023, from: <https://datatofish.com/count-duplicates-pandas/>

