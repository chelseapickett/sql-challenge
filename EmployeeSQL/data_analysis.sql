-- list employee number, last name, first name, sex & salary of each employee
SELECT * FROM employees

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no;

-- list the first name, last name and hire date for the employees who were hired in 1986

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- list the manager of each department along with their department number, department name, employee number, last name and first name
SELECT * FROM dept_manager

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

--list the department number for each employee along with that employee's emp_no, last name, first name and department name

SELECT departments.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
INNER JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no;

--list first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--list each employee in the Sales department, including their employee number, last name and first name

SELECT departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE dept_name = 'Sales';

--list each employee in the Sales and Development departments, including their employee number, last name, first name and department name
SELECT * FROM departments

SELECT departments.dept_name, employees.emp_no, employees.last_name, employees.first_name 
FROM departments
INNER JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE dept_name = 'Sales' 
OR dept_name = 'Development';

-- list the frequency counts, in descending order, of all the employee last names, or how many employees share each last name

SELECT last_name, COUNT(last_name)AS FREQUENCY
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name)DESC

--sanity check query
SELECT last_name
FROM employees
WHERE last_name = 'Baba'




