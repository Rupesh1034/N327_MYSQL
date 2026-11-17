-- to see database --
show DATABASES;

-- to create database
 CREATE DATABASE banking_db;

-- command to delete database
-- drop database banking_db;

-- to select database
use banking_db;

-- DDL COMMANDS
-- create table
CREATE table EMPLOYEE (
      id int,name VARCHAR(10)
);
-- to see the list of tables in database
SHOW tables;

-- to show the structure of table --
-- syntax: desc <table_name>;
describe employee;

-- to see the defination of tables--
 show create table employee;
  
  drop table EMPLOYEE;
 
 
 -- create table 
 CREATE TABLE IF  NOT EXISTS EMPLOYEE
 (
 ID INT,NAME VARCHAR(50),
 SALARY DOUBLE,HIRING_DATE date
 );
 
 -- syntax 1: to insert record one by one into a table--
 insert into employee values(1,'Shashank',500000,'2021-09-15');
insert into employee values(2,'Jay',400000,'2022-11-20');

-- insert multiple record within table--
insert into employee values
(3,'Gaurav',300000,'2023-01-23'),(4,'Kamal',350000,'2021-08-18'),(5,'Durgesh',60000,'2020-04-01');

create table Accounts (
    AccountID INT,
    AccountType VARCHAR(20),
    Balance Decimal(10,2)
);
    
    describe Accounts;
    
    CREATE TABLE Transactions (
        TransactionsID INT,
        TransactionDate DATE,
        Amount DECIMAL(10,2),
        TransactionType VARCHAR(20)
);

 CREATE TABLE Branches (
        BranchID INT,
        BranchName VARCHAR(100),
        BranchAddress VARCHAR(200),
        BranchPhone VARCHAR(15)
);


CREATE TABLE AccountBranches (
      AssignmentDate DATE 
);


 CREATE TABLE Loan (
      LoanID INT,
      LoanAmount DECIMAL(10,2),
      InterestRate DECIMAL(5,2),
      StartDate Date,
      EndDate date
);

CREATE TABLE Customers (
   CustomerID INT,
   FirstName VARCHAR(50),
   LastName VARCHAR(50),
   Email VARCHAR(100),
   Phone VARCHAR(15)
);

 describe customers;
 -- to add new columns in existing table --
 -- syntax: Alter table <table_name> ADD <column_name> <datatype> <size>; --
  
  ALTER TABLE Customers
  ADD DateOfBirth DATE;
  
  -- to modify the datatype and size of existing table --
  ALTER table Customers 
  modify CustomerID VARCHAR(100);   
        