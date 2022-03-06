
/*****CREATE DATABASE******/
create database sadhwi;
/****USE DATABSE*****/
use sadhwi
/********CREATE TABLE******/
create table customers
(id int primary key identity,
name varchar(50),
email varchar(50),
gender varchar(50),
mobile varchar(10)
);
//////////*****ENTER VALUES IN TABLE********////////
insert into customers values
('sadhwi','sadhwi@gmail.com','female',1234567898),
('rahul','rahul@gmail.com','male',1478529638),
('kirti','kirti@gmail.com','female',4536217589),
('nikku','nikku@gmail.com','female',1478529635),
('avinash','avinash@gmail.com','male',5285296345),
('ishanavi','ishanavi@gmail.com','female',2589631475),
('mritunjay','mritunjay@gmail.com','male',2589631474),
('satyam','satyam@gmail.com','male',1478523945),
('rishi','rishi@gmail.com','male',2589631475),
('chinni','chinni@gmail.com','male',4567891234);
select * from customers
/**********RENAME TABLE NAME*********/
sp_rename 'customers',employee;

/**********select command******/
select * from employee
/***********ADD COLUMN IN TABLE**********/
ALTER TABLE employee add city varchar(40);
ALTER TABLE employee add department varchar(40);
ALTER TABLE employee add salary money;
ALTER TABLE employee add designation varchar(40);
/*****update command*****/
update employee set city='ballia' where id=2
update employee set city='ballia' where id=1
update employee set city='noida' where id=3
update employee set city='ballia' where id=4
update employee set city='delhi' where id=5
update employee set city='ballia' where id=6
update employee set city='dehradun' where id=7
update employee set city='kanpur' where id=8
update employee set city='noida' where id=9
update employee set city='ballia' where id=10

update employee set salary=1000 where city='ballia'
update employee set salary=1800 where city='noida'
update employee set salary=3000 where city='dehradun'
update employee set salary=25000 where city='kanpur'
update employee set salary=50000 where city='delhi'
update employee set department='0fficer' where city='ballia'
update employee set department='ceo' where city='delhi'
update employee set department='student'where city='dehradun'
update employee set department='bank manager' where city='noida'
/********* delete column********/
alter table employee
drop column designation;
select * from employee
select * from employee where name like '%s'
select * from employee where name like '%r'
select * from employee where gender like 'f%'
select * from employee where name like '%s'
select * from employee where name like '%r___%l'
select * from employee where salary  not like '1000%'