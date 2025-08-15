create database std;
use std;

--create table student
create table Students(Std_id int,Name varchar(20),Age int,Fees int,Department varchar(20));
INSERT INTO Students(Std_id,Name,Age,Fees,Department) 
values (1,'ram',20,20000,'mech'),(2,'shyam',22,30000,'ENTC'),
(3,'sam',24,40000,'IT'),(4,'shubh',25,60000,'cs');

--retrive
Select * from Students;

--And operator
--case1 age>=22
--case2 Fees>30000
--both true then true
Select * from Students where Age>=22 AND Fees>30000;

--OR operator
--any one true then true
Select * from Students where Age>=22 OR Fees>=30000;

-- Get Students older than 25
SELECT * FROM Students WHERE Age >= 25;

-- Get Students with Fees not equal to 40000
SELECT * FROM Students WHERE Fees != 40000;


-- students older than 20 AND fees >30000;
SELECT * from Students where Age<22 AND Fees>30000;

-- students older than 20 OR fees >30000;
SELECT * from Students where Age<22 OR Fees>30000;

--NOT operator
Select * from Students where NOT Age>=25;

-- alias

--Arithmatic operator

-- Increase Fees by 10%
SELECT Name, Fees, Fees * 1.10 AS NewFees FROM Students;

-- Calculate remainder when salary divided by 10000
SELECT Name, Fees, Fees % 1.10 AS Remainder FROM Students;

--Between Operator
-- Student between age 20 and 30
--select * from table_name where column_name between value1 and value2;
select * from Students where Age Between 20 and 30; 

--Like Operator
select * from  Students;

--% back then it is starting
--% front then it is ending

SELECT * FROM Students WHERE Name LIKE 'r%';
SELECT * FROM Students WHERE Name LIKE '%m';
--you want 3 letter name and o should be in a middle
select * from Students Where Name Like 'o';

--union Operator
--Age retrive and fees
--two select queries result combine and remove duplicate records

select * from Students;
Select Name ,Department from Students
Where Department ='mech'

Union

Select Name ,Department from Students
Where Department ='cs'

--union all
--IT gives duplicates
insert into Students values(1,'ram',20,20000,'mech');

Select Name ,Department from Students
Where Department ='mech'

Union all

Select Name ,Department from Students
Where Department ='cs';

--intersect

Select Name ,Department from Students
Where Department ='mech'

Intersect

Select Name ,Department from Students
Where Department ='cs'

-- IS NULL example.

CREATE TABLE Projects (
  PID INT,
  EmployeeID INT,
  ProjectName VARCHAR(50)
);

INSERT INTO Projects VALUES
(1, 1, 'AI System'),
(2, 2, NULL);
select * from Projects;

-- Get records where ProjectName is NULL
SELECT * FROM Projects WHERE ProjectName IS NULL;

--Except operator
--Interview Question 
Select Name ,Department from Students
Where Department ='mech'

Except

Select Name ,Department from Students
Where Department ='cs';

--Group BY 
select * from Students;
--To find out the no of stu working in each departement
SELECT Department,count(*) as StudentCount from Students
Group by Department;

SELECT Department,sum(Fees) as StudentFees from Students
Group by Department;

--avg fees
SELECT Department,AVG(Fees) as TotalFees from Students
Group by Department;

--name 
select Name ,Count(*) AS occurence 
From Students
GROUP BY Name;
--count pergroup
select Name,Department ,Count(*) AS countpergroup
From Students
GROUP BY Name,Department;
--max()
select Name ,max(Fees) 
as maxFees
from Students
GROUP BY Name
order by maxFees desc;

--Having clause
--group by to filter that record we are using having clause
--where clause we can't use where we are performing aggregation

--departement wise group by with totalFees more than 30000

Select Department,SUM(Fees) as TotalFees
from Students
Group by Department
having SUM(Fees)>30000;

--departement in which we have more than one student
SELECT Department,count(*) As EMPCNT 
from Students
group by Department
having count(*)>1;

-- Name of the Student having avg fees =20000;

SELECT Name,avg(Fees) as AvgFees 
from Students
group by Name
having avg(Fees)=20000;

--multiple conditions
select Department, avg(Fees) as avgFes 
from Students group by Department 
having avg(Fees)=20000 and count(*) >=1;













