--Question 1
--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, 
employees.gender, salaries.salary
from employees left join salaries
on employees.emp_no=salaries.emp_no

--Question 2
--List employees who were hired in 1986.
SELECT last_name, first_name, hire_date
from employees
WHERE extract(year from hire_date)='1986'

--Question 3
--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no, d.dept_name, dm.emp_no, 
e.last_name,e.first_name, 
dm.from_date, dm.to_date 
from dept_manager as dm
left join departments as d on (dm.dept_no=d.dept_no)
left join employees as e on dm.emp_no=e.emp_no

--Question 4
--List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name,
d.dept_name
from dept_emp as de
left join employees as e on (de.emp_no=e.emp_no)
left join departments as d on (de.dept_no=d.dept_no)

--Question 5
--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name='Hercules'
AND
last_name LIKE 'B%'

--Question 6
--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de on e.emp_no=de.emp_no
left join departments as d on de.dept_no=d.dept_no
WHERE d.dept_name='Sales'

--Question 7
--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de on e.emp_no=de.emp_no
left join departments as d on de.dept_no=d.dept_no
WHERE d.dept_name='Sales'
or
d.dept_name='Development'

--Question 8
--In descending order, list the frequency count of employee last names, i.e., how many employees 
--share each last name.
SELECT last_name, count(distinct emp_no) as frequency
from employees
group by last_name
order by frequency DESC

