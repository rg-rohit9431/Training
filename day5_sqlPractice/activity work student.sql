use mindsprint;
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    major VARCHAR(50),
    gpa DECIMAL(3, 2),
    enrollment_date DATE
);

INSERT INTO Students (student_id, name, age, major, gpa, enrollment_date)
VALUES
(101, 'Alice Johnson', 20, 'Computer Science', 3.8, '2023-01-15'),
(102, 'Bob Smith', 22, 'Mathematics', 3.4, '2023-03-22'),
(103, 'Carol Lee', 19, 'Biology', 3.2, '2023-04-10'),
(104, 'David Brown', 21, 'Physics', 2.9, '2022-11-05'),
(105, 'Eve Davis', 23, 'Computer Science', 3.6, '2022-08-20'),
(106, 'Frank Miller', 20, 'Mathematics', 3.1, '2023-02-28');


select * from Students;

-- q1
select * from Students where major = "Computer Science";
-- q2
select * from Students where major = "Mathematics" and gpa > 3.5;
-- q3
select * from Students where age > 20 and gpa < 3.0;
-- q4
select * from Students where enrollment_date between 2023-01-01 and 2023-12-31;
-- q5
select distinct major from Students;
-- q6
select * from Students where student_id in (101,102,103);
-- q7
select * from Students where gpa = null;
-- q8
select * from Students where name != null;
-- q9
select * from Students where age = 18 or age = 22;
-- q10
select * from Students where age < 19 and gpa > 3.8;
-- q11 
select * from Students where gpa between 2.5 and 3.5 and major = "Biology";
-- q12
select * from Students order by name desc, gpa desc;




 