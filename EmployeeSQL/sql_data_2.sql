CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL PRIMARY KEY, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

DROP TABLE dept_manager


