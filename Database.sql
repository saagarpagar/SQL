CREATE DATABASE B5_BATCH;
use b5_batch;
show tables;

drop database b5_batch;

CREATE DATABASE b4_kaamgar;
use b4_kaamgar;
CREATE TABLE employee(
emp_id INT PRIMARY KEY,
first_name varchar(50),
last_name varchar(50),
email varchar(100),
phone_number varchar(15),
job_title varchar(50),
salary decimal(10, 2),
department varchar(50)
);

show tables;
select * from employee;
INSERT INTO employee (emp_id, first_name, last_name, email, phone_number, job_title, salary, department) VALUES
(29, 'Om Laxmman', 'Khairnar', 'om.khairnar@company.com', '9876543238', 'Data Scientist', 92000.00, 'Data Science'),
(30, 'Sanket Sanjay', 'Sonparate', 'sanket.sonparate@company.com', '9876543239', 'Machine Learning Engineer', 95000.00, 'AI Research'),
(31, 'Safinabano', 'Shah', 'safinabano.shah@company.com', '9876543240', 'Data Analyst', 76000.00, 'Analytics'),
(32, 'Harshada', 'Kadam', 'harshada.kadam@company.com', '9876543241', 'AI Specialist', 98000.00, 'AI Research'),
(33, 'Roshan Sampat', 'Ushir', 'roshan.ushir@company.com', '9876543242', 'Data Engineer', 87000.00, 'Data Engineering'),
(34, 'Pranav Sagar', 'Gaikwad', 'pranav.gaikwad@company.com', '9876543243', 'MLOps Engineer', 91000.00, 'DevOps'),
(35, 'Aditya Bhagvan', 'Jadhav', 'aditya.jadhav@company.com', '9876543244', 'Business Analyst', 78000.00, 'Business Intelligence'),
(36, 'Pratik', 'Banarase', 'pratik.banarase@company.com', '9876543245', 'Data Scientist', 94000.00, 'Data Science'),
(37, 'Prem Sunil', 'Dhavale', 'prem.dhavale@company.com', '9876543246', 'AI Researcher', 101000.00, 'AI Research'),
(38, 'Sharayu Uday', 'Deshmukh', 'sharayu.deshmukh@company.com', '9876543247', 'Data Engineer', 86000.00, 'Data Engineering'),
(39, 'Tanvi Gajanan', 'Bramhnakar', 'tanvi.bramhnakar@company.com', '9876543248', 'Machine Learning Engineer', 96000.00, 'AI Research'),
(40, 'Durgesh', 'Wagh', 'durgesh.wagh@company.com', '9876543249', 'Data Analyst', 75000.00, 'Analytics'),
(41, 'Abhishek', 'Shelke', 'abhishek.shelke@company.com', '9876543250', 'Data Scientist', 93000.00, 'Data Science'),
(42, 'Krushna', 'Shinde', 'krushna.shinde@company.com', '9876543251', 'MLOps Engineer', 89000.00, 'DevOps'),
(43, 'Sagar', 'Pagar', 'sagar.pagar@company.com', '9876543252', 'AI Specialist', 97000.00, 'AI Research'),
(44, 'Shubham', 'Shinde', 'shubham.shinde2@company.com', '9876543253', 'Data Engineer', 85000.00, 'Data Engineering'),
(45, 'Tejas', 'Gholap', 'tejas.gholap@company.com', '9876543254', 'Business Analyst', 77000.00, 'Business Intelligence'),
(46, 'Vinay Kailas', 'Ghanghav', 'vinay.ghanghav@company.com', '9876543255', 'Data Scientist', 91000.00, 'Data Science'),
(47, 'Arpita', 'Lakhe', 'arpita.lakhe@company.com', '9876543256', 'Machine Learning Engineer', 94000.00, 'AI Research'),
(48, 'Mansi Maroti', 'Madrewar', 'mansi.madrewar@company.com', '9876543257', 'Data Analyst', 74000.00, 'Analytics'),
(49, 'Raj', 'Mamarde', 'raj.mamarde@company.com', '9876543258', 'AI Researcher', 100000.00, 'AI Research'),
(50, 'Parshva', 'Mehta', 'parshva.mehta@company.com', '9876543259', 'Data Engineer', 84000.00, 'Data Engineering');

select * from employee;

alter table employee drop column phone_number;
select * from employee;

-- to cahnge the  table name
alter table employee rename slavary;
select * from slavary;
select first_name,salary,job_title from slavary;

select * from slavary where salary > 80000;

--  to find the specific values 

select * from slavary where department = "Data Engineering" and salary >80000;

--  to find the names start and ends with a alphabet

select * from slavary where last_name like '%e';
select * from slavary where first_name like 'P%';
select * from slavary where first_name like '_a%';

--  to find the character not in the names

select * from slavary where not first_name like '%a%';
 
  --  to update any values in table
  
update slavary set salary = 98000.00 where emp_id=43;
  
-- to see the both thind excluding others

select * from slavary where department = "Data Engineering" or department = "Data science";

--  to delete the entire enrty

delete from slavary where emp_id=38;

-- to find the values available in table

select * from slavary where department in ("Data Engineering" , "Data science");
 
 # find all people with salary > 90000
 select * from slavary where salary > 90000;
 
 # find all people with the character 'j' anywhere
 select * from slavary where first_name like "%j%";
 
 # update salaries of everyone whoe name start with 'p'
 update slavary set salary = 100000.00 where first_name like 'S%';
 select * from slavary;

# to off the safe mode 
SET SQL_SAFE_UPDATES = 0;

GRANT SELECT ON b4_kaamgar.slavary to 'sagar';

 GRANT update ON b4_kaamgar.slavary to 'sagar';

 revoke update ON b4_kaamgar.slavary from 'sagar';

use b4_kaamgar;
select * from slavary;

--used to count the entries in table
select count(*) from slavary;

--to count the how many Business Intelligence are there in department column
select count(*) from slavary where  department = "Business Intelligence";

--how many employees (or rows) are in departments other than “Data Science” and “Data Engineering”.
select count(*) from slavary where  department not in ("data science","Data Engineering");

--used to count the how many salaries in table and skips the null values(empty value)
select count(salary) from slavary;

--used to check sum of salaries in table 
select sum(salary) from slavary;

--used to find the sum of salaries for specific department" AI Reasearch"
select sum(salary) "salary of Ai re" from slavary where department not in  ("AI Research","Data Engineering");

--used to find the average salary of Ai research
select avg(salary) from slavary where department = "AI Research";

--it will find the whoes salary is minimum in analytics department
select min(salary) from slavary where department = "Analytics";

--it will find the whoes  is maximum in analytics department
select max(salary) from slsalaryavary where department = "Analytics";





