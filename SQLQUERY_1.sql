
create database Coaching;
use Coaching;

create table Coaching_students ( id int primary key,First_Name varchar(30),Last_Name varchar(30),Age int,Branch varchar(30),
    Mobile_no bigint
);

insert into Coaching_students (id, First_Name,last_name, Age, Branch, Mobile_no)
values(1, 'mahesh','narke', 35, 'entc', 9876856584),
(2, 'ramesh','kadam', 30, 'cs', 9854764454),
(3, 'Rahul','singh', 28, 'mech', 9834365365);


insert into Coaching_students values(4, 'harsh','rangani', 32, 'entc', 9687657767);

select * from Coaching_students;


select id, First_Name,Last_Name from Coaching_students;

select * from Coaching_students order by Age desc;


update Coaching_students 
set Age = 45
where id = 3;

delete from Coaching_students
where id = 2;


alter table Coaching_students
add city varchar(30);
alter table Coaching_students
add course varchar(30);



update Coaching_students 
set city= 'Delhi' 
where id = 1;
update Coaching_students 
set city = 'Mumbai'
where id = 3;
update Coaching_students
set city = 'Bangalore'
where id = 4;


alter table Coaching_students
drop column course ;


create table Coaching_studentss ( id int primary key,First_Name varchar(30),Last_Name varchar(30),Age int,Branch varchar(30),
    Mobile_no bigint
);
insert into Coaching_studentss (id, First_Name,last_name, Age, Branch, Mobile_no)
values(1, 'mahesh','narke', 35, 'entc', 9876856584),
(2, 'ramesh','kadam', 30, 'cs', 9854764454),
(3, 'Rahul','singh', 28, 'mech', 9834365365);
select * from Coaching_studentss;

truncate table Coaching_studentss;

drop table Coaching_studentss;
sp_help;
