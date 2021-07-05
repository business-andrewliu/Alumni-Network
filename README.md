# Alumni-Network
This network is designed to help alumni stay connected after graduation. 

# Alumni Career Community

## Why

2020 was an eventful year. I graduated from the UCSD in the midst of Covid-19. To keep my career growing and continue my learning, I constructed this project as a way to help my alumni network stay in touch using a few of the skills I learned this past year. 


## What

The idea behind this project is to build an alumni career development community that connects alumni across different companies and industries. The services, after they are built, are intended to help alumni connect with a community, search the directory, and connect with each other.

<!--Alumni Career Community (./Alumni%20Project-Context%20diagrams.png) -->

![Alumni Career Community Use Cases](Alumni%20Project-Use%20Cases.png)

This envisioned alumni career community is online.  Alumni register with the community app portal. After the registration, alumni can search by industry, by company, by school, or by year. Alumni can then connect with each other. Community activities happen off the portal with preferred channels such as SLACK and Microsoft Teams.  

The app portal is deployed to public cloud. It is maintained by a site administrator. A simple FAQ bot is setup to handle the routine questions.  

## Solution Summary
This portal app has the UI layer, service layer, and the database layer.  
![Alumni Career Community Context](Alumni%20Project-Context%20diagrams.png)
The UI portal is single page app to be built on a JavaScript framework.  
The service layer is comprised of microservices that connect the UI with the databases. 

The database design is the following. 
![Alumni Career Community Database](Alumni%20Project-data%20model.png)

## Implementation

industry_ddl.sql

create table industry (industry_id int(12) auto_increment, industry_name varchar(200),primary key (industry_id)) ENGINE = InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

alter table industry add unique key (industry_name)

industry_dml.sql

insert into industry (industry_name)
values ('Aerospace'), ('Biotech'), ('Finance'), ('Health Care'), ('IT');

company_ddl.sql

create table company (company_id int(6) auto_increment,
company_name varchar(200),
city varchar(200),
state varchar(200),
industry_id int(3),
primary key (company_id),
constraint foreign key (industry_id) references industry (industry_id))
ENGINE = InnoDB AUTO_INCREMENT=100001 DEFAULT CHARSET=utf8; 

alter table company add unique key (company_name);

company_dml.sql

 insert into company (company_name, city, state, industry_id) values
('Airspace Corp', 'Austin', 'TX', 1),
('Pharma Corp', 'Boston', 'MA', 2),
('Securities Inc.', 'New York', 'NY', 3),
('Yottabyte Inc.', 'San Francisco','CA', 5),
('Orange LLC', 'Palo Alto', 'CA', 5),
('Medicine Inc', 'San Diego', 'CA', 4),
('Investments LLC', 'New York', 'NY', 3),
('Healthy LLC', 'Austin', 'TX', 4),
('Satellites Corp', 'Houston', 'TX', 1),
('DNA Inc', 'San Diego', 'CA', 2);

employee_ddl.sql

create table employee 
(employee_id int(10) auto_increment,
first_name varchar(200),
last_name varchar(200),
email varchar (200),
title varchar (200),
salary float(10),
date_of_hire date,
manager_id int(10),
company_id int (6),
primary key (employee_id),
unique key (email),
constraint foreign key (company_id) references company (company_id),
constraint foreign key (manager_id) references employee (employee_id))
ENGINE = InnoDB AUTO_INCREMENT=1000000001 DEFAULT CHARSET=utf8;

employee_dml.sql

insert into employee (first_name, last_name, email, title, salary, date_of_hire, company_id)
values
('Andrew', 'Liu', 'andrew.liu@medicineinc.com', 'SCM Manager', 150000, '2020-06-12', 100006),
('John', 'Kim', 'john.kim@pharmacorp.com', 'Researcher', 125000, '2018-04-20', 100002),
('Ben', 'Edwards', 'ben.edwards@securitiesinc.com', 'Investment Manager', 200000, '2016-03-06',  100003),
('Melinda', 'Wang', 'melinda.wang@healthyllc.com', 'Health Manager', '175000', '2014-12-04', 100008),
('Kevin', 'Nguyen', 'kevin.nguyen@dnainc.com', 'Researcher', '75000', '2018-07-14', 100010),
('Tim', 'Lee', 'tim.lee@orangellc.com', 'Engineering Manager', '500000', '2011-08-13', 100005),
('James', 'Lee', 'james.lee@pharmacorp.com', 'Junior Researcher', '90000', '2020-07-18', 100002),
('Tim', 'Johnson', 'tim.johnson@investmentsllc.com', 'Securities Manager', '200000', '2009-03-24', 100007),
('David', 'Wang', 'david.wang@satellitescorp.com', 'Senior Engineer', '215000', '2012-05-30', 100009),
('Tim', 'Wang', 'tim.wang@airspacecorp.com', 'Senior Engineer', '145000', '2013-04-17', 100001),
('John', 'Liu', 'john,liu@yottabyeinc.com', 'Associate Programmer', '110000', '2018-09-12', 100004),
('Sarah', 'Kim', 'sarah.kim@securitiesinc.com', 'Junior Investor', '90000', '2020-12-15', 100003),
('Edward', 'Liang', 'edward.liang@medicineinc.com', 'Clinical Researcher', '200000', '2006-06-14', 100006),
('Tom','Edwards','tom.edwards@healthyllc.com','Research Associate',110000,'2008-05-14',100008),
('Jane','Lee','jane.lee@pharmacorp.com','Junior Researcher',120000,'2013-03-12',100002),
('Richard','Jung','richard.jung@dnainc.com','Lab Associate',85000,'2019-10-15',100010),
('George','Leung','george.leung@yottabyeinc.com','Products Researcher',145000,'2014-07-23',100004),
('Zack','Cheng','zack.cheng@satellitescorp.com','Associate Analyst',70000,'2017-11-29',100009),
('Henry','Johnson','henry.johnson@orange.com','Engineering Associate',150000,'2015-02-17',100005),
('Robert','Kim','robert.kim@medicineinc.com', 'Junior Researcher', '60000', '2021-07-03', 100006),
('Wendy', 'Leung', 'wendy.leung@satellitescorp.com', 'Engineering Associate', '72000', '2020-07-18', 100009),
('George', 'Yang', 'george.yang@airspacecorp.com', 'Engineering Manager', '145000', '2011-08-26', 100001),
('Timothy', 'Yang', 'timothy.yang@healthyllc.com', 'Nutrition Associate', '89000', '2014-06-01', 100008),
('Phillip', 'Lee', 'phillip.lee@yottabyteinc.com', 'Senior Programmer', '137500', '2005-09-14', 100004),
('Brenda', 'Nguyen', 'brenda.nguyen@securitiesinc.com', 'Junior Analyst', '53000', '2021-03-15', 100003) ;
