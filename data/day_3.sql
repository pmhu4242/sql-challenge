CREATE TABLE departments (
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL, 
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES titles(emp_no),
	PRIMARY KEY (dept_no) 
	);
	
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (dept_no),
	FOREIGN KEY (emp_no) REFERENCES titles(emp_no)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(emp_title_id),
	birth_date INT,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date INT);
	
CREATE TABLE salaries (
	Salary INT NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY(emp_no) 
);
-- REFERENCES dept_emp(emp_no)
CREATE TABLE titles (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	emp_title_id VARCHAR,
	birth_date INT,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date INT
);


DROP TABLE salaries
DROP TABLE departments


-- REFERENCES departments(dept_no)