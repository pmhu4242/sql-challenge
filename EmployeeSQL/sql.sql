CREATE TABLE dept_emp (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

SELECT *
FROM dept_emp;





DROP TABLE dept_emp;