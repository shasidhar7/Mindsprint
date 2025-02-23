-- Query from erdplus 

create database mindsprint;
use mindsprint;

CREATE TABLE Student
(
  sid INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(250) NOT NULL,
  mobile VARCHAR(250) NOT NULL,
  address VARCHAR(250) NOT NULL,
  PRIMARY KEY (sid),
  UNIQUE (email)
);

CREATE TABLE Course
(
  cid INT NOT NULL,
  name VARCHAR(250) NOT NULL,
  price INT NOT NULL,
  description VARCHAR(250) NOT NULL,
  PRIMARY KEY (cid)
);

CREATE TABLE Enrollment
(
  eid INT NOT NULL,
  amount INT NOT NULL,
  date DATE NOT NULL,
  sid INT NOT NULL,
  cid INT NOT NULL,
  PRIMARY KEY (eid),
  FOREIGN KEY (sid) REFERENCES Student(sid),
  FOREIGN KEY (cid) REFERENCES Course(cid)
);


-- Library Management System
CREATE TABLE Book
(
  BookId INT NOT NULL,
  Title VARCHAR(250) NOT NULL,
  Author VARCHAR(250) NOT NULL,
  PRIMARY KEY (BookId)
);

CREATE TABLE Member
(
  MemberId INT NOT NULL,
  Name VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  PRIMARY KEY (MemberId)
);

CREATE TABLE Loan
(
  LoanId INT NOT NULL,
  LoanDate DATE NOT NULL,
  ReturnDate DATE NOT NULL,
  BookId INT NOT NULL,
  MemberID INT NOT NULL,
  BookId INT NOT NULL,
  MemberId INT NOT NULL,
  PRIMARY KEY (LoanId),
  FOREIGN KEY (BookId) REFERENCES Book(BookId),
  FOREIGN KEY (MemberId) REFERENCES Member(MemberId)
);