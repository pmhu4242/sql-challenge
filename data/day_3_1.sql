-- Create tables conataining the primary keys
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date INT,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date INT
	);

CREATE TABLE departments (
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

-- create tables containing the foreign keys
-- 



	
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL
	
);


	
CREATE TABLE salaries (
	Salary INT NOT NULL,
	emp_no INT NOT NULL
	);

CREATE TABLE titles (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR,
	birth_date INT,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date INT
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL, 
	dept_no VARCHAR NOT NULL
	);