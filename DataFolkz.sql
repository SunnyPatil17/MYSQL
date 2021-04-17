create database demo;
use demo;

create table employee( eno int not null 
,ename varchar(20),age int,
occupation varchar(20),
PRIMARY KEY(eno));

desc employee;
insert into employee values(3, 'Dimple', 34, 'software');
select * from employee;

create table students(studno int, 
studname varchar(25), 
class int, grade char(20));

select * from students;

alter table employee add column(location varchar(20));

update employee set location = 'Pune' where eno = 3 ;

update employee set ename = 'Bhuvana' where eno = 1;

create table employees (EMPNO int,
ENAME varchar(25), GENDER varchar(20), DEPTNO int,
SALARY int, COMM int, primary key (EMPNO)) ;

select * from employees ;

create table department (DEPTNO int not null, DNANE varchar(25), 
LOCATION varchar(25), primary key(DEPTNO)); 

select * from department ;

insert into employees values(1,'ANKITA', 'F', 10, 20000, 1200) ;
insert into employees values(2,'SUJEET', 'M', 20, 24000, null) ;
insert into employees values(3,'VIJAYA', 'F', 30, 28000, 2000) ;
insert into employees values(4,'NITIN', 'M', 40, 18000, 3000) ;
insert into employees values(5,'VIKRAM', 'M', 10, 22000, 2500) ;

insert into department values(10,'HR', 'NEW YORK') ;
insert into department values(20,'ACCOUNTS', 'BRAZIL') ;
insert into department values(30,'SALES', 'CANADA') ;
insert into department values(40,'IT', 'INDIA');

alter table employees add column (DOJ date);
update employees set DOJ = '2011-05-19' where EMPNO = 5;

select * from employee2 ;

rename table employees to employee2 ;
update employee2 set COMM = 3000 where EMPNO = 2;
delete from employee where eno = 1 ;

select empno,ename,salary,gender from employee2 where deptno = 10 order by salary ;

create table customer2 (custid int not null,
custname varchar(25), product varchar(25), 
dt_of_purchase date , amount int,
primary key (custid)) ;

select * from customer ;

insert into customer values(1,'Sunny Patil', 'HP Laptop', '2020-10-23', 58000) ;
insert into customer values(2,'Gopal Patil', 'Honor 6x Mobile', '2019-06-18', 12500) ;
insert into customer values(3,'Radha Patil', 'Samsung Galaxy Mobile', '2020-01-16', 19500) ;
insert into customer values(4,'Mital Parmar', 'Pendant', '2018-06-08', 1500) ;
insert into customer values(5,'Ruchi Saroj', 'Power Bank', '2020-06-17', 2000) ;
insert into customer values(6,'Sunny Patil', 'Agarbatti', '2021-01-15', 350) ;
insert into customer values(7,'Gopal Patil', 'Attar', '2021-01-15', 600) ;
insert into customer values(8,'Radha Patil', 'Perfume', '2021-03-01', 780) ;
insert into customer values(9,'Mital Parmar', 'Shampoo', '2021-01-25', 650) ;
insert into customer values(10,'Ruchi Saroj', 'Lord Shiva Statue', '2021-02-06', 450) ;

select custid, custname, product, amount from customer order by dt_of_purchase ;

select * from employee2 ;

select deptno, min(salary) from employee2 ;
select deptno, max(salary) from employee2 ;
select deptno, sum(salary) from employee2 group by deptno ;

select avg(salary) from employee2;
select avg(salary) from employee2 where deptno = 10;

select count(*) from employee2 where deptno = 10;
select count(*) from employee2;

select * from employee2 where ename like  'V%' ;
select * from employee2 where ename like  '_itin' ;

create table employee3 (empno int not null,
ename varchar(25), gender char(20), deptno int,
salary int, comm int, primary key (empno)); 

insert into employee3 values(1,'MITAL', 'F', 10, 20000, 1200) ;
insert into employee3 values(2,'SUNNY', 'M', 10, 24000, 1600) ;
insert into employee3 values(3,'RUCHI', 'F', 30, 28000, 2000) ;
insert into employee3 values(4,'DANISH', 'M', 40, 18000, 3000) ;
insert into employee3 values(5,'AKSHATHA', 'F', 20, 22000, 2500) ;

select ename, max(salary) from employee3 ;
select max(salary) from employee3 where ename like 'S%';
select * from department order by location ;

select * from department order by deptno desc;

select * from department order by dnane;



create table shipping_details (id int not null, shipped_date date,
customer_name varchar(25), product varchar(20), price int,
delviery_date date, primary key (id)); 

insert into shipping_details values(5,'2020-06-17', 'Ruchi Saroj', 'Power Bank', 2000, '2020-06-21') ;

select * from shipping_details ;

alter table shipping_details add column (status varchar(25)) ;
update shipping_details set status = 'Pending' where srno > 3 ;

alter table shipping_details rename column delviery_date to delivery_date ;

alter table shipping_details add column custid int after shipped_date;	

select * from shipping_details where status = 'Delivered' ;

update shipping_details set custid = 5 where srno = 5 ;

select * from shipping_details order by price ;

select * from shipping_details group by product;

select status, sum(price) from shipping_details group by status ;

select * from shipping_details where product like 'p%' ;

select max(price) from shipping_details where delivery_date between '2020-01-23' and '2020-12-31';

select * from department ;

select * from employee ;
insert into employee values(1,'Sunny', 31, 'IT', 'Mumbai');

CREATE TABLE members( member_id int ,  name VARCHAR(100));
 CREATE TABLE commitee( commite_id int ,  name VARCHAR(100)); 
INSERT INTO members(member_id,name)
VALUES(1,'John'),(2,'Jane'),(3,'Mary'),(4,'David'),(5,'Amelia'); 

select * from members;

INSERT INTO commitee(commite_id,name)
VALUES(1,'John'),(2,'Jane'),(3,'Amelia'),(4,'joe'); 

select * from commitee;

SELECT 
    m.member_id, 
    m.name  ,
    c.commite_id
      FROM
    members m
INNER JOIN commitee c 
	ON c.name = m.name;  
    
select * from department ;

select * from employee ;

alter table department rename column DNANE to DNAME   ;

create table student (studno int not null,
studname varchar(100), date_of_birth date, father_name varchar(100), class int, 
primary key (studno)); 

insert into student 
values 
(1,'MITAL', '1997-06-12', 'RAJESH', 7), 
(2,'SUNNY', '1989-07-17', 'GOPAL', 10) , 
(3,'RUCHI', '1996-04-09', 'INDRAJEET',8) ;

create table classteacher (studno int not null,
studname varchar(100), marks int, result_status varchar(100), 
primary key (studno)); 

insert into classteacher
values
(1, 'MITAL', 56, 'PASS') ,
(2, 'SUNNY', 64, 'PASS') ;

select * from classteacher ;
select * from student;


SELECT 
s.studno, 
s.studname,
s.father_name,
t.marks,
t.result_status
FROM
    student s
INNER JOIN classteacher t 
	ON t.studname = s.studname;  


SELECT 
    m.member_id, 
    m.name  ,
    c.commite_id
      FROM
    members m
LEFT OUTER JOIN commitee c 
	ON c.name = m.name;


SELECT 
    m.member_id, 
    m.name  ,
    c.commite_id
      FROM
    members m
RIGHT OUTER JOIN commitee c 
	ON c.name = m.name;

SELECT 
s.studno, 
s.studname,
s.father_name,
t.marks,
t.result_status
FROM
    student s
LEFT OUTER JOIN classteacher t 
	ON t.studname = s.studname;  
    
SELECT 
s.studno, 
s.studname,
s.father_name,
t.marks,
t.result_status
FROM
    student s
RIGHT OUTER JOIN classteacher t 
	ON t.studname = s.studname;  
    

truncate studentinfo ;

create table movielist (movieid int not null, moviename varchar(100), rating float(10) not null) ;
create table moviemembers (movieid int not null, moviename varchar(100), membername varchar(100), location varchar(100), profit int) ;

insert into moviemembers
values (1, 'Bahubali', 'Prabhas','Hyderabad',300000) , (2, 'Bahubali 2', 'Prabhas', 'Hyderabad', 400000), (3, 'Coolie No. 1','Varun','Mumbai', 15000) ,
(4, 'KGF','Yash', 'Bangalore',400000) , (5, 'Master','Vijay','Chennai', 300000), (6,'ABCD 2', 'Varun','Mumbai',35000) ;

select * from moviemembers;
use demo;

select * from studentinfo2 ;

SELECT  
movie_t.movieid, movie_t.moviename, movie_t.rating, members_t.membername, members_t.location, members_t.profit
FROM movielist movie_t LEFT OUTER JOIN moviemembers members_t ON members_t.movieid = movie_t.movieid;  

SELECT  
movie_t.movieid, movie_t.moviename, movie_t.rating, members_t.membername, members_t.location, members_t.profit
FROM movielist movie_t INNER JOIN moviemembers members_t ON members_t.movieid = movie_t.movieid;  


SELECT * FROM DEMO.MOVIEMEMBERS ;

show tables ;

SELECT e.ename,e.salary,e.deptno
FROM employee2 e
WHERE e.salary>( SELECT avg(salary)
FROM employee2 e2
GROUP BY deptno
HAVING e2.deptno = e.deptno);

select * from employee2 ;


CREATE TABLE payments (
  customerNumber int(11) ,
  checkNumber varchar(50) ,
  paymentDate date ,
  amount decimal(10,2) );
  
  describe payments;

  insert  into payments(customerNumber,checkNumber,paymentDate,amount) 
  values (103,'HQ336336','2004-10-19','6066.78'),
(103,'JM555205','2003-06-05','14571.44'),
(103,'OM314933','2004-12-18','1676.14'),
(112,'BO864823','2004-12-17','14191.12'),
(112,'HQ55022','2003-06-06','32641.98'),
(112,'ND748579','2004-08-20','33347.88'),
(114,'GG31455','2003-05-20','45864.03'),
(114,'MA765515','2004-12-15','82261.22'),
(114,'NP603840','2003-05-31','7565.08'),
(114,'NR27552','2004-03-10','44894.74'),
(119,'DB933704','2004-11-14','19501.82'),
(119,'LN373447','2004-08-08','47924.19'),
(119,'NG94694','2005-02-22','49523.67'),
(121,'DB889831','2003-02-16','50218.95'),
(121,'FD317790','2003-10-28','1491.38'),
(121,'KI831359','2004-11-04','17876.32'),
(121,'MA302151','2004-11-28','34638.14'),
(124,'AE215433','2005-03-05','101244.59'),
(124,'BG255406','2004-08-28','85410.87'),
(124,'CQ287967','2003-04-11','11044.30'),
(124,'ET64396','2005-04-16','83598.04');

  select * from payments;
  
  SELECT MAX(amount) 
        FROM payments;

SELECT customerNumber,
       checkNumber,
       amount
FROM payments
WHERE amount = (
	SELECT MAX(amount) 
        FROM payments
);


SELECT count(*) FROM payments WHERE amount > ( SELECT avg(amount) FROM payments);
SELECT count(*) FROM payments WHERE amount < ( SELECT avg(amount) FROM payments);

SELECT * FROM payments WHERE amount < ( SELECT avg(amount) FROM payments) AND  PAYMENTDATE BETWEEN '2003-01-01' AND '2004-12-31' ;

SELECT DISTINCT customerNumber FROM payments;

create table studentinfo2 (studname varchar(35), roll_no int, 
location varchar(35), phone_number bigint) ;

create table student2 (studname varchar(35), roll_no int, 
section varchar(10)) ;

insert into student values ('RAVI', 104, 'A') , ('SUMATHI', 105, 'B'), ('RAJ', 102, 'A') ;

select si.studname, si.roll_no, si.location, si.phone_number, s.section 
from studentinfo si inner join student s on si.roll_no = s.roll_no where s.section = 'A' ;

Select studname, location, phone_number from studentinfo
where roll_no IN (select roll_no from STUDENT where SECTION= 'A');

delete from student where roll_no in (select roll_no from studentinfo where location= 'Coimbatore');

SELECT DATEDIFF("2021-04-09", "2021-03-14");

SELECT DATE_ADD("2017-06-15", INTERVAL 10 DAY);

SELECT DAYNAME("2021-03-14");

SELECT monthname("2021-03-14");

delete from student where studname = 'RAJ' ;
