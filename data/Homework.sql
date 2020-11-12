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
	

-- import data from csv files following the order above 

SELECT *
FROM employees;

SELECT *
FROM salaries;

-- List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees e 
JOIN salaries s
ON e.emp_no = s.emp_no
;


-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date LIKE '%1986'
;


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, de.emp_no
FROM departments d
JOIN dept_emp de
ON d.dept_no = de.dept_no
;
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e  
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d 
ON de.dept_no = d.dept_no
;
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees e 
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%'
-- JOIN 
-- ON
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e 
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d 
ON de.dept_no = d.dept_no
WHERE d.dept_name LIKE 'Sales'
;

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e 
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d 
ON de.dept_no = d.dept_no
WHERE d.dept_name LIKE 'Sales'
OR d.dept_name LIKE 'Development'
;
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT DISTINCT(last_name)
FROM employees e

SELECT COUNT(e.last_name), last_name
FROM employees e
GROUP BY (e.last_name)
ORDER BY COUNT(e.last_name) DESC;

























	

-- DROP TABLE departments;
-- DROP TABLE employees;
-- DROP TABLE titles;
-- DROP TABLE salaries;
-- DROP TABLE dept_manager;
-- DROP TABLE dept_emp;

-- CREATE TABLE emp_sal (
-- 	emp_no INT NOT NULL,
-- 	first_name VARCHAR NOT NULL,
-- 	last_name VARCHAR NOT NULL,
-- 	sex VARCHAR NOT NULL,	
-- 	salary INT NOT NULL
-- 	);
	
	
-- JOIN emp_sal
-- SELECT salary 
-- FROM 