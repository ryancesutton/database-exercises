
use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

select *
from employees
where emp_no in (
    select hire_date
    where emp_no like '101010'
    and hire_date like '1990-10-22');

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles




# Find all the current department managers that are female.

