-- Tables to hold imported csv data
-- Create the tables containing the primary keys
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
	);
	
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR,
	PRIMARY KEY (title_id)
	);


	
CREATE TABLE employees (
	emp_no VARCHAR NOT NULL, 
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL,
	PRIMARY KEY (emp_no)
	);

-- FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
CREATE TABLE dept_emp (
	emp_no VARCHAR NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);	
-- Create the dependent tables connected to employee 	
CREATE TABLE salaries (
	emp_no VARCHAR NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);


-- Create tables containing multiple foreign keys 
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);	
	
