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

select * from employees limit 5;
select * from departments limit 5;
select * from dept_emp limit 5;
select * from dept_emp_latest_date limit 5;
select * from dept_manager limit 5;
select * from salaries limit 5;
select * from titles limit 5;