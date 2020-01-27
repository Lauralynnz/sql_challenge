-----------------------------------
--            QUERIES            --
-----------------------------------

-- Q1: List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON
	employees.emp_no=salaries.emp_no;

-- Q2: List employees who were hired in 1986.

SELECT *
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31'
;

-- Q3: List the manager of each department with the following information: department number, department name, 
-- the manager’s employee number, last name, first name, and start and end employment dates.

SELECT dept_manager.dept_no, dept_manager.emp_no, dept_manager.from_date as start_date, dept_manager.to_date as end_date,
	departments.dept_name,  
	employees.last_name, employees.first_name 
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
;

-- Q4: List the department of each employee with the following information: employee number, 
-- last name, first name, and department name.
SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name	  
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
;

-- Q5: List all employees whose first name is “Hercules” and last names begin with “B.”

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Hercules') and last_name LIKE 'B%'
;

-- Q6: List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name	  
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'

-- Q7: List all employees in the Sales and Development departments, including their employee number,
-- last name, first name, and department name.

SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name	  
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'

-- Q8: In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) as "Count"
FROM employees
GROUP BY last_name 
ORDER BY "Count" DESC;
