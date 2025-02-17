show databases;

create database if not exists mindsprint;
use mindsprint;

create table employee (
	id int primary key,
	name varchar(20),
	department varchar(20),
	salary decimal(10,2)
);


alter table employee
	add column position varchar(20);
    
insert into employee values(
400,"Rohit Kumar","sap dep",500000,"jr dev"
);

insert into employee values(
401,"Nitish Kumar","sap dep",50000,"full stack dev"
);

insert into employee values(
402,"vishal Kumar","share point",5000,"power app"
);

insert into employee (id,position,department,salary,name) 
values
(403,'tester','testing dep',500,'Anushka Kohli');

insert into employee (id,position,department,salary,name) 
values
(404,'dev','magento',50,'Riya bagaria'),
(405,'hello dev','angular',5,'aarushi');

delete from employee where id =403;

truncate table employee;

drop table employee;

select * from employee;

describe employee;

create table fresher (
	id int primary key auto_increment,
	name varchar(20),
	department varchar(20),
	salary decimal(10,2)
);

describe fresher;

insert into fresher values(
null,"Fiza Nazz","sap dep",2
);



insert into fresher (department,salary,name) 
values
('magento',50,'Riya bagaria'),
('angular',5,'aarushi');


select * from fresher;

select name,salary from fresher;


select 141 as 'result';
select concat("ram", "kumar") as fullname;
select now() today;
select upper('hello world') as "upper case";

select * from fresher where salary > 10;

select * from fresher where salary = 2;

select * from fresher where id = 2;

select * from fresher where name = 'Fiza Nazz';

select * from fresher where department = "sap dep";

select * from fresher where salary >= 2 and salary < 30;

select * from fresher order by  salary asc;

select * from fresher order by  name desc;

select * from fresher order by  department asc,salary desc;

select * from fresher order by name asc;

select * from fresher order by  salary desc, department asc, name desc;

select * from fresher order by  salary desc limit 1;

select distinct department from fresher;

select * from fresher where department = "sap dep" or department = "angular";
select * from fresher where name like "%i%"





