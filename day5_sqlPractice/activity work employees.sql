use employees; 
show tables;


-- q1
select e.first_name, e.last_name, t.title from employees e join titles t where t.emp_no = e.emp_no;

-- q2
select * from employees e join dept_emp d 
on e.emp_no = d.emp_no 
join departments dep 
on dep.dept_no = d.dept_no 
where dept_name ="sales";

-- q4
select avg(salary) from employees e join salaries s 
on e.emp_no = s.emp_no;

-- q5
select e.dept_name, count(*) as "total employee" from departments e join dept_emp d 
on e.dept_no = d.dept_no
group by e.dept_no; 

-- q6
select e.dept_name, count(*) as "total employee" from departments e join dept_emp d 
on e.dept_no = d.dept_no
group by e.dept_no
having `total employee` > 5; 


-- 7.Find all employees who work in the 'Marketing' or 'Finance' departments.
select e.emp_no, e.first_name 'First Name', e.last_name 'Last Name', e.gender , d.dept_name Department
from employees e
join dept_emp demp
on e.emp_no = demp.emp_no
join departments d
on demp.dept_no = d.dept_no
where d.dept_name = 'Marketing' or d.dept_name = 'Finance';

-- 8.Find all Employees whose first name starts with the letter 'A'.
select * from employees where first_name like 'A%';

-- 9.Combine the first names of employees and customers into a single list.  --- no customer entity

-- 10.Find the names of employees who have placed the highest number of orders. --- orders attribute is not present

-- 11.Find the number of Male and Female employees in the database.
select gender, count(gender) from employees group by gender; 

-- 12.Find the Average salary by employee title and order by descending order.
select t.title Title,avg(s.salary) 'Average Salary'
from employees e
join titles t
on e.emp_no = t.emp_no
join salaries s
on e.emp_no = s.emp_no
group by t.title
order by `Average Salary` desc;

-- 13. List first 5 employees (id,fname,lname,department name) alog with their department names.
select e.emp_no, e.first_name 'First Name', e.last_name 'Last Name' , d.dept_name Department
from employees e
join dept_emp demp
on e.emp_no = demp.emp_no
join departments d
on demp.dept_no = d.dept_no
limit 5;

-- 14.Display firstname, lastname,salary of the highest payed employee.
select e.first_name 'First Name', e.last_name 'Last Name', s.salary
from employees e
join salaries s
on e.emp_no = s.emp_no
order by s.salary desc 
limit 1;

-- 15.Display second highest payed employee
select e.first_name 'First Name', e.last_name 'Last Name', s.salary
from employees e
join salaries s
on e.emp_no = s.emp_no
order by s.salary desc 
limit 1 offset 1;


select * from employees limit 5;
select * from departments limit 5;
select * from dept_emp limit 5;
select * from dept_emp_latest_date limit 5;
select * from dept_manager limit 5;
select * from salaries limit 5;
select * from titles limit 5;