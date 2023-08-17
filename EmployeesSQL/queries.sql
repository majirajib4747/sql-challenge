SELECT employees.emp_no, employees.last_name, employees.first_name,employees.sex,salaries.salary
FROM employees
JOIN salaries
ON
employees.emp_no = salaries.emp_no

SELECT employees.first_name, employees.last_name,employees.hire_date
FROM employees WHERE extract(year from hire_date) = 1986

select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager inner join departments on
dept_manager.dept_no = departments.dept_no inner join employees on 
employees.emp_no = dept_manager.emp_no;

select dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name , departments.dept_name
from employees inner join dept_emp on
employees.emp_no = dept_emp.emp_no inner join departments on 
departments.dept_no = dept_emp.dept_no;

select first_name , last_name , sex from employees where first_name like 'Hercules' and last_name like 'B%';


select employees.emp_no, employees.last_name, employees.first_name , departments.dept_name
from employees inner join dept_emp on
employees.emp_no = dept_emp.emp_no inner join departments on 
departments.dept_no = dept_emp.dept_no where departments.dept_name like '%Sales%';

select employees.emp_no, employees.last_name, employees.first_name , departments.dept_name
from employees inner join dept_emp on
employees.emp_no = dept_emp.emp_no inner join departments on 
departments.dept_no = dept_emp.dept_no where departments.dept_name like '%Sales%' or departments.dept_name like '%Development%';

SELECT last_name,COUNT(*) as count
FROM employees
GROUP BY last_name
ORDER BY count DESC;


