create database md;
use md;

CREATE TABLE Employees (
  ID INT,
  Name VARCHAR(50),
  Age INT,
  Salary INT

);
INSERT INTO Employees VALUES
(1, 'Alice', 25, 30000),
(2, 'Bob', 28, 45000),
(3, 'Charlie', 30, 40000),
(4, 'David', 22, 28000);
select *from Employees;
select *from Employees 
where Age>=28 and Salary>30000;

select *from Employees 
where Age>=28 or Salary>30000;

select *from Employees 
where Age>28

select *from Employees 
where NOT Age>=28
select *from Employees;

select Name, Salary,Salary+10000 as newsalary from Employees;

select * from Employees where salary Between 20000 and 40000;
select * from Employees where salary in( 20000 , 40000);

--like operator
select * from Employees where Name like 'a%';

select * from Employees where Name like '%e';
--middle letter
select * from Employees where Name like '_o_';

--union operator
alter table Employees
add  department varchar(30);

update Employees
set department='It'
where Name='BOb';
update Employees
set department='sales'
where Name='alice';
update Employees
set department='entc'
where Name='charlie';
update Employees
set department='mech'
where Name='David';
update Employees
set department='It'
where Name='David';
select *from Employees;

select department ,count(*) as employeecount
from Employees
group by  department;

select department ,sum(Salary) as employeesum
from Employees
group by  department;
select department ,avg(Salary) as employeesum
from Employees
group by  department;
select department ,count(*) as employeename
from Employees
group by  Name;

select name , max(Salary)
as maxsalary
from Employees
group by Name
order by maxsalary asc;

select *from Employees order by name;
select *from Employees order by department;
select *from Employees order by Salary;

select department ,sum(Salary) as employeesum
from Employees
group by  department
Having sum(Salary)>30000;
select department ,count(*) as employeecount
from Employees
group by  department
HAving count(*)>1;
select *from Employees
order by name ,Salary
Having Salary>30000;


select name ,avg(Salary) as empl
from Employees
group by  name
having avg(Salary)>30000;





CREATE TABLE project(pid int, employeeid int,projectname varchar(30));
 INSERT INTO 