create database libdb;

use libdb;

CREATE TABLE Member
(
  MemberID INT NOT NULL,
  Name INT NOT NULL,
  Email INT NOT NULL,
  PRIMARY KEY (MemberID)
);

CREATE TABLE Book
(
  BookId INT NOT NULL,
  Title INT NOT NULL,
  Author INT NOT NULL,
  PRIMARY KEY (BookId)
);

CREATE TABLE Loan
(
  LoanLoanId INT NOT NULL,
  LoanDate INT NOT NULL,
  ReturnDate INT NOT NULL,
  BookId INT NOT NULL,
  MemberID INT NOT NULL,
  PRIMARY KEY (LoanLoanId),
  FOREIGN KEY (BookId) REFERENCES Book(BookId),
  FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);