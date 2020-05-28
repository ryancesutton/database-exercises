
use employees;

select distinct title from titles;

select last_name
from employees
where last_name like '%E'
  and last_name like 'E%'
  group by last_name;

select first_name, last_name
from employees
where last_name like '%E'
  and last_name like 'E%'
  group by first_name, last_name;

select distinct last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%';

select last_name, count(last_name) as 'results'
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
  group by last_name
  order by results;

select count(gender) as 'results', gender
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
  group by gender;







