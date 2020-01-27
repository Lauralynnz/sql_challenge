-----------------------------------
--        TABLE SCHEMATA         --
-----------------------------------


--------------1------------------

-- Drop employees table
DROP TABLE employees;

-- Create employees table
CREATE TABLE employees (
  emp_no SERIAL PRIMARY KEY,
  birth_date DATE,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  gender VARCHAR(1),
  hire_date DATE
);

-- View employees table
SELECT * FROM employees

COPY employees FROM '/tmp/employees.csv' DELIMITER ',' CSV HEADER;

---------------2-----------------

-- Drop dept_manager table
DROP TABLE dept_manager;

-- Create dept_manager table
CREATE TABLE dept_manager (
  dept_no VARCHAR(4),
  emp_no INT,
  from_date DATE,
  to_date DATE
);

-- View dept_manager table
SELECT * FROM dept_manager

COPY dept_manager FROM '/tmp/dept_manager.csv' DELIMITER ',' CSV HEADER;

----------------3----------------

-- Drop dept_emp table
DROP TABLE dept_emp;

-- Create dept_emp table
CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(4),
  from_date DATE,
  to_date DATE
);

COPY dept_emp FROM '/tmp/dept_emp.csv' DELIMITER ',' CSV HEADER;

-- View dept_emp table
SELECT * FROM dept_emp

---------------4-----------------

-- Drop titles table
DROP TABLE titles;

-- Create titles table
CREATE TABLE titles (
  emp_no INT,
  title VARCHAR(30),
  from_date DATE,
  to_date DATE
);

COPY titles FROM '/tmp/titles.csv' DELIMITER ',' CSV HEADER;

-- View titles table
SELECT * FROM titles


----------------5----------------

-- Drop departments table
DROP TABLE departments;

-- Create departments table
CREATE TABLE departments (
  dept_no VARCHAR(30) PRIMARY KEY,
  dept_name VARCHAR(30)
);

COPY departments FROM '/tmp/departments.csv' DELIMITER ',' CSV HEADER;

-- View departments table
SELECT * FROM departments

----------------6----------------

-- Drop salaries table
DROP TABLE salaries;

-- Create salaries table
CREATE TABLE salaries (
  emp_no INT,
  salary MONEY,
  from_date DATE,
  to_date DATE
);


COPY salaries FROM '/tmp/salaries.csv' DELIMITER ',' CSV HEADER;

-- View salaries table
SELECT * FROM salaries
