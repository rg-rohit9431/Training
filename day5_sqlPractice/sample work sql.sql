create database sample;
use sample;
 
create table department (
	id INT primary key,
	name varchar(100) not null
);

CREATE TABLE employees ( 
	id INT PRIMARY KEY, 
	name VARCHAR(100) NOT NULL, 
	position VARCHAR(100) NOT NULL, 
	salary DECIMAL(10, 2), 
	department_id INT, 
	FOREIGN KEY (department_id) 
	REFERENCES department(id) 
);

CREATE TABLE Accounts ( 
account_id VARCHAR(10) PRIMARY KEY, 
account_name VARCHAR(100), 
balance DECIMAL(10, 2) 
);
 


INSERT INTO department (id, name) 
VALUES 
(1, 'Sales'), 
(2, 'R&D'), 
(3, 'Marketing'), 
(4, 'Finance'), 
(5, 'Human Resources');

INSERT INTO employees 
(id, name, position, salary, department_id) 
VALUES 
(1, 'John Doe', 'Manager', 75000.00, 1), 
(2, 'Jane Smith', 'Developer', 65000.00, 2), 
(3, 'Emily Johnson', 'Designer', 60000.00, 3), 
(4, 'Michael Brown', 'Analyst', 70000.00, 4), 
(5, 'Linda Green', 'Manager', 75000.00, 1), 
(6, 'James White', 'Developer', 65000.00, 2), 
(7, 'William Black', 'Developer', NULL, 2), 
(8, 'Mary Blue', 'HR', 50000.00, 5);

INSERT INTO Accounts (account_id, account_name, balance) VALUES 
('A001', 'Alice', 1000.00), 
('A002', 'Bob', 1500.00), 
('A003', 'Charlie', 2000.00);
 

select * from employees join department on employees.department_id = department.id;

select e.id, e.name, e.position,d.name as dep from employees as e join department as d on e.department_id = d.id;

insert into employees values
(9,"Raju bhaiya","developer",1000000,null);

-- left join
select e.id, e.name, e.position,d.name as dep from employees as e left join department as d on e.department_id = d.id;


insert into department values
(6,"developer");

-- right join
select e.id, e.name, e.position,d.name as dep from employees as e right join department as d on e.department_id = d.id;

-- full outer join
select e.id, e.name, e.position,d.name as dep from employees as e left join department as d on e.department_id = d.id
union
select e.id, e.name, e.position,d.name as dep from employees as e right join department as d on e.department_id = d.id;

-- cross join
select e.id, e.name, e.position,d.name as dep from employees as e cross join department as d;

-- group by
select count(*) from employees group by id;

select d.name as dep,count(*) as "count of employee" from employees as e 
join department as d 
where d.id = e.department_id 
group by d.name;

-- having clause
select d.name "Department Name",count(*) "Total no. of Employees",sum(salary) "Total Sum of Salary" from employees e 
join department d on d.id = e.department_id 
group by d.name 
having `Total Sum of Salary` > 100000;

select d.name "Department Name",count(*) "Total no. of Employees",
sum(salary) "Total Sum of Salary" from employees e 
join department d on d.id = e.department_id 
group by d.name 
having `Total no. of Employees` > 2;

-- rollup
SELECT d.name AS "Department Name",
       SUM(e.salary) AS "Total Sum of Salary"
FROM employees e
JOIN department d ON d.id = e.department_id
GROUP BY d.name with rollup;



Begin;
update Accounts set balance =  balance + 100 where account_id = 'A001'; 
update Accounts set balance =  balance + 100 where account_id = 'A002'; 
update Accounts set balance =  balance + 100 where account_id = 'A003'; 
rollback;
commit;



DELIMITER // 
create procedure getAllAccounts()
begin 
	select * from Accounts;
end //  
DELIMITER ;

call getAllAccounts();

select * from employees;
select * from department;
select * from Accounts;