# sql-challenge

## Overview
SQL Homework 1 for Data Bootcamp using PgAdmin for database querying 

### Background 
It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 

## Data Modeling 
Insepct the CSV's and create an ERD of the tables to help with creation of the table schema

![SQL_homework_ERD](data/ERD.png)


## Data Engineering

Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints. Import each CSV file into the corresponding SQL table. Remember to import the csv files in the same order you created the tables so all the data imports succesfully. 





## Data Analysis

With the complete database created in the previous section you can now begin to query the various tables. Create a query for each of the following:

  1. List the following details of each employee: employee number, last name, first name, sex, and salary.

  2. List first name, last name, and hire date for employees who were hired in 1986.

  3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

  4. List the department of each employee with the following information: employee number, last name, first name, and department name.

  5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

  6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

  7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

  8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.



