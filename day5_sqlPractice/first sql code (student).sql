show databases;

create database testDb;
use testDb;

CREATE TABLE Student
(
  id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  phone VARCHAR(10) NOT NULL,
  email VARCHAR(20) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE (phone)
);

CREATE TABLE Course
(
  cid INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  price INT NOT NULL,
  description VARCHAR(100) NOT NULL,
  PRIMARY KEY (cid)
);

CREATE TABLE Enrollment
(
  Amount INT NOT NULL,
  date DATE NOT NULL,
  eid INT NOT NULL,
  id INT NOT NULL,
  cid INT NOT NULL,
  PRIMARY KEY (eid),
  FOREIGN KEY (id) REFERENCES Student(id),
  FOREIGN KEY (cid) REFERENCES Course(cid)
);