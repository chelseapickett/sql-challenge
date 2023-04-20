# sql-challenge

In this challenge several csv files are analyzed in relationship to each other by using data modeling, data engineering and data analysis. The data used for this challenge is comprised of six csv files of various company information to include employee information, department information and salary information. By creating a quick visualization of the csv files and their contents and determining the relationships between these files, tables can be created in SQL that will allow manipulation and analysis of the data. 

## Data Modeling 
To visualize the components of this analysis the [QuickDBD website](https://www.quickdatabasediagrams.com/) was used to create an entity relationship diagram, or ERD. This website allows you to create conceptual, logical and physical data models. The csv files were translated into the QuickDBD website by including the table name and column names. By visualizing this data, relationships between the tables became evident. The type of relationships also became apparent and this collection of data shows one-to-one and one-to-many relationships between the tables. [View ERD.](https://github.com/chelseapickett/sql-challenge/blob/main/EmployeeSQL/ERD.png) 

## Data Engineering
The QuickDBD website makes fast work of creating a table schema for each of the csv files. By designating primary keys and foreign keys for each table and specifying the data types of each column a physical model was created. By exporting this ERD as a .sql file the tables for these data were created efficiently. The first attempt however did not work, as the order that the tables were created was important with consideration to the primary and foreign keys, so the tables had to be dropped using a CASCADE constraint to address the foreign keys and the primary keys they referenced. Once the correct order was established, the tables were created correctly. Then each csv file was imported to their respective tables. [View table schemata.](https://github.com/chelseapickett/sql-challenge/blob/main/EmployeeSQL/data_engineering.sql)

## Data Analysis
Several queries were made to pull out data from different tables. By joining tables it was possible to produce a list of employees and their salaries, the department managers employee information, each employee in a specific department and so on. Constraints were used to filter specific requests such as all employess hired in a specific year, all employees with the same first name and first letter of last name, and how many employees share the same last name. [View SQL queries.](https://github.com/chelseapickett/sql-challenge/blob/main/EmployeeSQL/data_analysis.sql)

# Conclusion
This challenge was a introduction into the joys of data modeling, data engineering and the data analysis possible with SQL. By using tools like QuickDBD it is possible to quickly model data and create the structured relationships necessary to access the information in a meaningful way. 
