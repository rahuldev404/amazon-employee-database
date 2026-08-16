create database Amazon;

use Amazon;


CREATE TABLE Employee (
SN_No INT PRIMARY KEY COMMENT 'Serial Number',
Employee_ID INT NOT NULL COMMENT 'Employee ID',
Name VARCHAR(50) COMMENT 'Name',
CHECK (Name REGEXP '^(Mr\\.|Ms\\.|Mrs\\.)[A-Za-z ]+$'),
Gender CHAR(1) NOT NULL COMMENT 'Gender',
CHECK (Gender IN ('M','F')),
Date_Of_Birth DATE COMMENT 'Date of Birth',
Age INT COMMENT 'Age',
Email VARCHAR(50) COMMENT 'Email',
Phone_Number CHAR(16) NOT NULL COMMENT 'Phone Number',
CONSTRAINT chk_phone_number
CHECK (Phone_Number REGEXP '^\\+[1-9][0-9]{7,14}$'),
Address VARCHAR(50) NOT NULL COMMENT 'Address',
Country VARCHAR(50) COMMENT 'Country',
City VARCHAR(50) COMMENT 'City',
Work_Mode VARCHAR(20) COMMENT 'Work Mode',
Salary VARCHAR(20) NOT NULL COMMENT 'Formatted Salary',
Department VARCHAR(50) COMMENT 'Department',
Job_Title VARCHAR(50) COMMENT 'Job Title',
Years_of_Experience FLOAT NOT NULL COMMENT 'Years of Experience',
Joining_Date DATE NOT NULL COMMENT 'Joining Date',
Skill VARCHAR(50) COMMENT 'Skill',
Performance_Rating FLOAT NOT NULL COMMENT 'Performance Rating'
);


INSERT INTO Employee (
    SN_No,
    Employee_ID,
    Name,
    Gender,
    Date_Of_Birth,
    Age,
    Email,
    Phone_Number,
    Address,
    Country,
    City,
    Work_Mode,
    Salary,
    Department,
    Job_Title,
    Years_Of_Experience,
    Joining_Date,
    Skill,
    Performance_Rating
)
VALUES
(1,101,'Mr.Rahul Yadav','M','2007-01-01',19,'rahul@gmail.com','+919876543210','123 Ayodhya Bypass','India','Bhopal','Online','₹10,000,000','IT','Data Analyst',3,'2020-01-17','SQL',4.6),
(2,102,'Ms.Priya Sharma','F','1998-05-14',27,'priya@gmail.com','+14155552671','45 MG Road','USA','New York','Hybrid','$75,000','IT','Software Engineer',5,'2020-06-10','Java',4.8),
(3,103,'Mr.Aman Verma','M','1996-11-22',29,'aman@gmail.com','+447911123456','221 Baker Street','United Kingdom','London','Onsite','£55,000','Finance','Financial Analyst',6,'2019-08-15','Excel',4.5),
(4,104,'Mrs.Anjali Gupta','F','1994-02-18',31,'anjali@gmail.com','+61412345678','12 George Street','Australia','Sydney','Remote','A$85,000','HR','HR Manager',8,'2017-09-12','Recruitment',4.7),
(5,105,'Mr.Rohit Singh','M','1997-09-08',28,'rohit@gmail.com','+4915123456789','56 Alexander Platz','Germany','Berlin','Hybrid','€68,000','IT','Data Engineer',4,'2021-03-18','Python',4.6),
(6,106,'Ms.Neha Kapoor','F','1999-01-30',26,'neha@gmail.com','+6591234567','89 Orchard Road','Singapore','Singapore','Onsite','S$72,000','Marketing','Marketing Executive',3,'2022-01-25','SEO',4.4),
(7,107,'Mr.Ajay Patel','M','1993-07-11',32,'ajay@gmail.com','+971501234567','22 Sheikh Zayed Road','UAE','Dubai','Hybrid','AED180,000','Operations','Operations Manager',9,'2016-11-20','Leadership',4.9),
(8,108,'Mrs.Sneha Iyer','F','1995-12-05',30,'sneha@gmail.com','+819012345678','10 Sakura Street','Japan','Tokyo','Remote','¥9,500,000','IT','Cloud Engineer',7,'2018-07-02','AWS',4.8),
(9,109,'Mr.Vikram Joshi','M','1998-04-17',27,'vikram@gmail.com','+33612345678','18 Rue Rivoli','France','Paris','Onsite','€58,000','Customer Service','Customer Support Associate',4,'2021-05-14','Communication',4.3),
(10,110,'Ms.Kavya Reddy','F','1997-10-09',28,'kavya@gmail.com','+16045551234','500 King Street','Canada','Toronto','Hybrid','C$82,000','Product','Product Manager',5,'2020-10-01','Agile',4.7),
(11,111,'Mr.Sachin Mehta','M','1992-06-25',33,'sachin@gmail.com','+919812345678','78 Park Street','India','Mumbai','Onsite','₹12,000,000','IT','Senior Software Engineer',10,'2015-04-20','SQL',4.9),
(12,112,'Ms.Riya Patel','F','1999-02-15',26,'riya@gmail.com','+919987654321','Ring Road','India','Ahmedabad','Hybrid','₹8,500,000','HR','HR Executive',4,'2021-05-15','Communication',4.4),
(13,113,'Mr.Abhishek Jain','M','1995-08-10',30,'abhishek@gmail.com','+14165551234','Queen Street','Canada','Toronto','Remote','C$90,000','Finance','Accountant',7,'2018-07-12','Accounting',4.5),
(14,114,'Ms.Pooja Singh','F','1996-03-21',29,'pooja@gmail.com','+447700900123','Oxford Road','United Kingdom','Manchester','Onsite','£48,000','Marketing','SEO Specialist',5,'2020-02-10','SEO',4.4),
(15,115,'Mr.Karan Malhotra','M','1994-11-19',31,'karan@gmail.com','+61298765432','George Street','Australia','Melbourne','Hybrid','A$78,000','Sales','Sales Manager',8,'2017-11-18','Sales',4.8),
(16,116,'Ms.Nikita Roy','F','1998-07-25',27,'nikita@gmail.com','+491701234567','Main Street','Germany','Munich','Remote','€65,000','IT','Web Developer',4,'2021-09-05','JavaScript',4.6),
(17,117,'Mr.Deepak Kumar','M','1993-09-18',32,'deepak@gmail.com','+336987654321','Central Avenue','France','Lyon','Onsite','€60,000','Operations','Operations Executive',9,'2016-08-22','Management',4.7),
(18,118,'Ms.Anita Das','F','1997-06-09',28,'anita@gmail.com','+6581234567','Marine Drive','Singapore','Singapore','Hybrid','S$78,000','IT','System Administrator',5,'2019-10-17','Linux',4.5),
(19,119,'Mr.Mohit Arora','M','1995-01-14',30,'mohit@gmail.com','+971551234567','Palm Road','UAE','Abu Dhabi','Remote','AED160,000','Finance','Finance Manager',6,'2019-04-09','Budgeting',4.8),
(20,120,'Ms.Shreya Sen','F','1998-12-28',27,'shreya@gmail.com','+818012345678','Cherry Blossom Ave','Japan','Osaka','Hybrid','¥8,900,000','IT','AI Engineer',5,'2020-01-30','Machine Learning',4.9),
(21,121,'Mr.Nitin Sharma','M','1992-10-10',33,'nitin@gmail.com','+919998887777','Civil Lines','India','Delhi','Onsite','₹14,000,000','IT','Project Manager',11,'2014-05-18','Leadership',4.9),
(22,122,'Ms.Isha Verma','F','1999-04-04',26,'isha@gmail.com','+14154443333','5th Avenue','USA','Chicago','Hybrid','$82,000','Customer Service','Support Manager',4,'2021-03-15','CRM',4.5),
(23,123,'Mr.Harsh Gupta','M','1996-08-08',29,'harsh@gmail.com','+447911999888','King Street','United Kingdom','Birmingham','Remote','£52,000','Marketing','Content Writer',5,'2020-07-07','Content Writing',4.3),
(24,124,'Mrs.Sonal Shah','F','1995-05-16',30,'sonal@gmail.com','+61455566777','Elizabeth Street','Australia','Brisbane','Onsite','A$74,000','HR','Recruiter',6,'2019-01-12','Recruitment',4.4),
(25,125,'Mr.Raj Patel','M','1997-03-12',28,'raj@gmail.com','+491609876543','Green Road','Germany','Hamburg','Hybrid','€63,000','IT','DevOps Engineer',4,'2021-08-20','Docker',4.7),
(26,126,'Ms.Megha Nair','F','1998-09-09',27,'megha@gmail.com','+336456789123','River Street','France','Marseille','Remote','€57,000','Product','Product Designer',4,'2021-06-11','Figma',4.6),
(27,127,'Mr.Rakesh Mishra','M','1994-04-14',31,'rakesh@gmail.com','+6598765432','Hill View','Singapore','Singapore','Onsite','S$81,000','Operations','Supply Chain Analyst',7,'2018-09-13','Logistics',4.8),
(28,128,'Ms.Aarti Joshi','F','1996-06-18',29,'aarti@gmail.com','+971509999888','City Center','UAE','Sharjah','Hybrid','AED150,000','Finance','Tax Consultant',5,'2020-04-16','Taxation',4.5),
(29,129,'Mr.Yash Thakur','M','1997-01-20',28,'yash@gmail.com','+819099988877','Sunrise Road','Japan','Nagoya','Remote','¥8,200,000','IT','Backend Developer',5,'2020-02-20','Node.js',4.7),
(30,130,'Ms.Divya Rao','F','1998-11-11',27,'divya@gmail.com','+16045559999','Maple Avenue','Canada','Vancouver','Hybrid','C$88,000','Product','Business Analyst',5,'2020-09-09','Power BI',4.8);

select *
 from Employee where salary>80000 or Country="india";
 select*
 from Employee where City not in ("Mumbai","Bhopal","Delhi");
 select*
 from Employee where Performance_Rating between 4.6 and 5;