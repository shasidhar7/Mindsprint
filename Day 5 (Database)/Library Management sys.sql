-- Library Management

create database LibraryManagement;
use LibraryManagement;

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
  MemberId INT NOT NULL,
  PRIMARY KEY (LoanId),
  FOREIGN KEY (BookId) REFERENCES Book(BookId),
  FOREIGN KEY (MemberId) REFERENCES Member(MemberId)
);